class Schedule
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  # Nice to have: Awareness of multiple tasks scheduled on the same date
  def add_task(name, date)
    @tasks << Task.new(name, date)
  end

  def display
    @tasks.sort.each do |task|
      puts task
    end
    nil
  end
end
