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

  def task_on_date?(date)
    tasks.any? { |task| task.date == date }
  end

  def tasks_on_date(date)
    tasks.select { |task| task.date == date }
  end

  def num_tasks_on_date(date)
    tasks_on_date(date).length
  end

  def display
    sorted_tasks = tasks.sort_by(&:date)

    current_date = nil

    sorted_tasks.each do |task|
      if task.date != current_date
        puts "#{task.formatted_date}:"
        current_date = task.date
      end
      puts "\t#{task.name}"
    end

    nil
  end
end
