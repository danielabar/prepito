require "rails_helper"

RSpec.describe Schedule do
  describe "#date_with_fewest_tasks" do
    it "returns date with fewest number of tasks" do
      s = Schedule.new
      start_date = 1.day.from_now.to_date
      end_date = 2.days.from_now.to_date
      s.add_task("foo", start_date, "prep")
      s.add_task("bar", start_date, "prep")
      s.add_task("baz", end_date, "prep")

      result = s.date_with_fewest_tasks(start_date, end_date)
      expect(result).to eq(end_date)
    end

    it "returns date with 0 tasks" do
      s = Schedule.new
      start_date = 1.day.from_now.to_date
      end_date = 3.days.from_now.to_date
      s.add_task("foo", start_date, "prep")
      s.add_task("bar", start_date, "prep")
      s.add_task("baz", end_date, "prep")

      result = s.date_with_fewest_tasks(start_date, end_date)
      expect(result).to eq(2.days.from_now.to_date)
    end

    # TODO: It should never return a cook day
  end
end
