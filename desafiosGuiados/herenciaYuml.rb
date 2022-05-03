class Appointment
  attr_accessor :location, :purpose, :hour, :min
  def initialize(location, purpose, hour, min)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
  end

  def location

  end

  def purpose

  end

  def hour

  end

  def min

  end
end


class MonthlyAppointment < Appointment
  def initialize(location, purpose, hour, min, day)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
    @day = day
  end

  def day

  end
  def occurs_on?

  end
  def to_s

  end
end

class DailyAppointment < Appointment
  def occurs_on?

  end

  def to_s

  end
end

class OneTimeAppointment
  attr_accessor :day, :month, :year
  def initialize(location, purpose, hour, min, day, month, year)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
    @day = day
    @month = month
    @year = year
  end

  def day

  end

  def month

  end

  def year

  end

  def occurs_on?

  end

  def to_s

  end
end













