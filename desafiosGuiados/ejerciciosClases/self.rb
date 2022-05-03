### self es una palabra reservada que nos da acceso al objeto actual
# Ejemplo 1

#class Persona
  #attr_accessor :nombre
  #def initialize(nombre)
    #@nombre = nombre
  #end

  #def cantar
    #"Soy #{self.nombre} y estoy cantando!"
  #end

  #def ir_a_karaoke
    #self.cantar # Es muy común llamar a un método del objeto dentro del mismo objeto
  #end
#end

#persona_amable = Persona.new('John Doe')
#puts persona_amable.ir_a_karaoke

# Ejemplo 2
#class Persona
  #def initialize
    #@edad = 0
  #end
  #def envejecer
    #@edad += 1
  #end
  #def envejecer_rapido
    #10.times{self.envejecer}
  #end
#end

#pablo = Persona.new
#puts pablo.envejecer_rapido

# Si utilizamos la instruccion self por si sola en un metodo de instancia, que retorna?
# Retorna la instancia misma

#class Fantasma
  #def reflejar
    #self
  #end
#end

#gasparin = Fantasma.reflejar

