class MealPlanner
  include Interactor

  delegate :cook_days, :schedule, to: :context

  def call
    context.schedule = Schedule.new
    cook_days.sort.each do |cook_day|
      # First slot in the cooking days
      day_type = determine_day_type(cook_day)
      selected_meal = Meal.where(day_type:).sample
      schedule.add_task("Cook #{selected_meal.name}", cook_day, "cook")
      # Then fill in the prep tasks
      populate_prep_tasks(schedule, cook_day, selected_meal)
    end
  end

  private

  def determine_day_type(cook_day)
    cook_day.on_weekend? ? "weekend" : "weeknight"
  end

  def populate_prep_tasks(schedule, cook_day, selected_meal)
    selected_meal.prep_steps.each do |step|
      days_in_advance = step.days_in_advance
      preparation_task = step.name

      preparation_day = find_valid_preparation_day(schedule, cook_day, days_in_advance)
      schedule.add_task(preparation_task, preparation_day, "prep")
    end
  end

  def find_valid_preparation_day(schedule, cook_day, days_in_advance)
    return cook_day if days_in_advance.zero?

    earliest_date = [cook_day - days_in_advance.days, Time.zone.today].max
    latest_date = [cook_day - 1.day, Time.zone.today].max

    schedule.date_with_fewest_tasks(earliest_date, latest_date) || earliest_date
  end
end
