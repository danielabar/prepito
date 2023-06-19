class Task
  include Comparable
  attr_reader :name, :date

  def initialize(name, date)
    @name = name
    @date = date
  end

  def <=>(other)
    date <=> other.date
  end

  def formatted_date
    "#{date.strftime('%a. %b. %e, %Y')}"
  end

  def to_s
    "#{date.strftime('%a. %b. %e, %Y')}: #{name}"
  end
end
