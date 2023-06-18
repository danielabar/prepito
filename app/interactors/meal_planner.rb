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

      preparation_day = find_valid_preparation_day(cook_day, days_in_advance)
      schedule.add_task(preparation_task, preparation_day)
    end
  end

  # FIXME: Prevent dates in the past
  def find_valid_preparation_day(cooking_day, days_in_advance)
    # current_day = Time.zone.today
    cooking_day - days_in_advance.days

    # valid_day = target_day
    # valid_day += 1 while valid_day < current_day

    # valid_day
    # target_day
  end
end
