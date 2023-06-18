class Schedule
  attr_reader :tasks

  # Nice to have: Awareness of multiple tasks scheduled on the same date
  # probably need a hash here instead of array, but this will affect sorting.
  def initialize
    @tasks = []
  end

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
