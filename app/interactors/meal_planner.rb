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

  # Rules:
  # 1. If `days_in_advance` is 3, could also be done 1 or 2 days in advance,
  #     but not 0 because that's a cooking day, and don't want to do too much
  #     extra on cooking day, unless the prep task is defined as 0 days in advance,
  #     which means it must be done on cooking day.
  # 2. Do not return date in the past, default to today.
  # 3. Try to avoid more than 2 tasks on the same day.
  def find_valid_preparation_day(schedule, cooking_day, days_in_advance)
    return cooking_day if days_in_advance.zero?

    (1..days_in_advance).each do |offset|
      preparation_day = cooking_day - offset.days
      return preparation_day if preparation_day >= Time.zone.today && schedule.num_tasks_on_date(preparation_day) < 2
    end

    # Defaults to today if no suitable day could be found
    # TODO: Put in "bucket" with least number of other tasks?
    Time.zone.today
  end
end
