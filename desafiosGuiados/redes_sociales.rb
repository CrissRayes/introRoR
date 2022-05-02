# Una persona puede tener múltiples redes sociales, las personas tienen un nombre y una edad, mientras que de la información de la red social se requiere saber qué tipo de red social, que puede ser Facebook, Instagram, Pinterest, Twitter o Linkedin y además, el usuario en la red social.

class Persona
  attr_accessor :nombre, :edad, :redes_sociales
  def initialize(nombre, edad, redes_sociales)
    @nombre = nombre
    @edad = edad
    @redes_sociales = redes_sociales
  end
end

class RedSocial
  attr_accessor :tipo, :nombre_usuario
  def initialize(tipo, nombre_usuario)
    @tipo = tipo
    @nombre_usuario = nombre_usuario
  end
end

rs1 = RedSocial.new('Facebook', 'hola1234@gmail.com')
rs2 = RedSocial.new('Instagram', 'hola1234@gmail.com')
rs3 = RedSocial.new('Pinterest', 'hola1234@gmail.com')

p1 = Persona.new('Juan', 28, [rs1, rs2, rs3])
puts "Mi nombre es: #{p1.nombre} y mi edad es: #{p1.edad}"
puts "Mis redes sociales son:"
puts "#{p1.redes_sociales[0].tipo} -- #{p1.redes_sociales[0].nombre_usuario}"
puts "#{p1.redes_sociales[1].tipo} -- #{p1.redes_sociales[1].nombre_usuario}"
puts "#{p1.redes_sociales[2].tipo} -- #{p1.redes_sociales[2].nombre_usuario}"

