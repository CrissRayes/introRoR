class Persona
  attr_accessor :nombre, :mascotas 
  def initialize(nombre, mascotas)
    @nombre = nombre
    @mascotas = mascotas
  end 
end
class Mascota 
  attr_accessor :nombre 
  def initialize(nombre)
    @nombre = nombre
  end
end
m1 = Mascota.new('Seymour')
m2 = Mascota.new('Nibbler')
p1 = Persona.new('Fry', [m1, m2])

puts p1.nombre
puts p1.mascotas[0].nombre
puts p1.mascotas[1].nombre

