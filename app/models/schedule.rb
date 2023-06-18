# TODO: date formatting: formatted_date = time.strftime('%a. %b. %e, %Y')
# TODO: Enumerable, sort by date
class Schedule
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task, date)
    # @tasks << { task:, date: }
    @tasks << Task.new(task, date)
  end

  def display
    @tasks.sort.each do |task|
      puts task
    end
    nil
  end
end
