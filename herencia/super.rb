#class Madre
  #attr_accessor :nombre
  #def initialize(nombre)
    #@nombre = nombre
  #end
  #def despertar
    #"Es hora de despertar"
  #end
#end

#class Hija < Madre
  #def despertar
    #super + " para ir al colegio" # super llama al metodo de la clase Padre
  #end
#end

#lunes = Hija.new("Camila")
#puts lunes.despertar

class X
  def metodo_complejo
    puts "durante"
  end
end

class Y < X
  def metodo_complejo
    puts "antes"
    super
    puts "después"
  end
end

#Y.new.metodo_complejo

## Cadena de ancestros

class Z < Y
  def metodo_complejo
    puts "soy uno nuevo"
    super
  end
end

Z.new.metodo_complejo


