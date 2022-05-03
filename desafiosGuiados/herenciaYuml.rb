class Appointment
  attr_accessor :location, :purpose, :hour, :min
  def initialize(location, purpose, hour, min)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
  end

  def location
  # No implementado
  end

  def purpose
  # No implementado
  end

  def hour
  # No implementado
  end

  def min
  # No implementado
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
  # No implementado
  end
  def occurs_on?
  # No implementado
  end
  def to_s
  # No implementado
  end
end

class DailyAppointment < Appointment
  def occurs_on?
  # No implementado
  end

  def to_s
  # No implementado
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
  # No implementado
  end

  def month
  # No implementado
  end

  def year
  # No implementado
  end

  def occurs_on?
  # No implementado
  end

  def to_s
  # No implementado
  end
end

# Reunión única en Desafío Latam sobre Trabajo el 4/6/2019 a las 14:30.
puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)

# Reunión diaria en Desafío Latam sobre Educación a las 8:15.
puts DailyAppointment.new('Desafio Latam', 'Educación', 8, 15)

# Reunión mensual en NASA sobre Aliens el dia 23 a las 8:15.
puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)








