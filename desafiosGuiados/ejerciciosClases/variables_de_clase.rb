### Ejemplo 1
class FabricaLego
  @@count = 0 # variable de clase
  def initialize(size)
    @size = 1
    @@count += 1
  end
  def contador_lego
    @@count
  end
end

lego1 = FabricaLego.new(1)
lego2 = FabricaLego.new(2)
lego3 = FabricaLego.new(3)
lego4 = FabricaLego.new(4)

puts lego1.contador_lego


### Ejemplo 2

class Vehiculo
  @@count = 0
  def initialize(size)
    @size = 1
    @@count += 1
  end

  def contador_de_vehiculos
    @@count
  end
end

toyota = Vehiculo.new(1)
nissan = Vehiculo.new(2)
peugeot = Vehiculo.new(3)

puts toyota.contador_de_vehiculos



