class MealPlanner
  include Interactor

  delegate :cook_days, :schedule, to: :context

  def call
    context.schedule = Schedule.new
    cook_days.each do |cook_day|
      day_type = determine_day_type(cook_day)
      selected_meal = Meal.where(day_type:).sample
      schedule.add_task("Cook #{selected_meal.name}", cook_day)
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
      schedule.add_task(preparation_task, preparation_day)
    end
  end

  def find_valid_preparation_day(schedule, cooking_day, days_in_advance)
    return cooking_day if days_in_advance.zero?

    (0..days_in_advance).each do |offset|
      preparation_day = cooking_day - offset.days
      return preparation_day if preparation_day >= Time.zone.today && !schedule.task_on_date?(preparation_day)
    end

    Time.zone.today
  end
end
