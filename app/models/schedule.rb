class Schedule
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(name, date, type)
    @tasks << Task.new(name, date, type)
  end

  def task_on_date?(date)
    tasks.any? { |task| task.date == date }
  end

  def cook_task_on_date?(date)
    tasks.any? { |task| task.date == date && task.type == "cook" }
  end

  def tasks_on_date(date)
    tasks.select { |task| task.date == date }
  end

  def num_tasks_on_date(date)
    tasks_on_date(date).length
  end

  # Not used?
  # def prep_tasks
  #   tasks.select { |task| task.type == "prep" }
  # end

  def date_with_fewest_tasks(earliest, latest)
    counter = {}
    (earliest..latest).each do |date|
      next if cook_task_on_date?(date)

      counter[date] = num_tasks_on_date(date)
    end

    counter.min_by { |_date, count| count }&.first
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
