class Vehiculo
  def initialize
    @ruedas = 4
  end
  def arrancar
    puts 'RRrrrrrrrrrrrr'
  end
  def detenerse
    puts 'El motor se ha detenido'
  end
end

toyota = Vehiculo.new
toyota.arrancar

class Moto < Vehiculo
  def initialize
    @ruedas = 2
  end
end

yamaha = Moto.new
yamaha.detenerse
