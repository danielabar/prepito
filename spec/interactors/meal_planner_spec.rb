require "rails_helper"

RSpec.describe MealPlanner, type: :interactor do
  describe ".call" do
    it "does something" do
      cook_day1 = 3.days.from_now
      cook_day2 = 7.days.from_now
      result = MealPlanner.call(cook_days: [cook_day1, cook_day2])
      pp result
    end
  end
end
