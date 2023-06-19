# TODO: Include ActiveModel and require name/date must be populated
class Task
  include Comparable
  attr_reader :name, :date, :type

  def initialize(name, date, type)
    @name = name
    @date = date
    @type = type
  end

  def <=>(other)
    date <=> other.date
  end

  def formatted_date
    date.strftime("%a. %b. %e, %Y")
  end

  def to_s
    "#{date.strftime('%a. %b. %e, %Y')}: #{name}"
  end
end
