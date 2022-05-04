### MODULOS ###
# Los módulos sirven para agrupar constantes, agrupar métodos, agrupar clases y evitar colisiones de nombres

### Agrupando Constantes ###
module MyMath
  PI = 3.14
  E = 2.718
end

# Se puede acceder a las constantes del módulo con la siguiente sintaxis:
puts MyMath::PI # => 3.14
puts MyMath::E # => 2.718

# De hecho, el módulo Math existe en Ruby y se usa de la misma forma.

### Agrupando Métodos ###
module Operaciones
  def self.sumar(x,y)
    x + y
  end

  def self.restar(x, y)
    x - y
  end

  def self.multiplicar(x, y)
    x * y
  end
end

# El método se llama con la sintaxis Modulo.metodo.
Operaciones.sumar(4,3) # => 7
Operaciones.restar(4,3) # => 1
Operaciones.multiplicar(4,3) # => 12

# IMPORTANTE: 
# No se puede crear instancias de un módulo.
# Los módulos NO tienen herencia.
# Los módulos ayudan a crear comportamoento a las clases por medio de los "mixins".

### Agrupando Clases ###
# Las clases se agrupan para evitar colisiones de nombres (a veces se requiere que dos clases tengan el mismo nombre)
# Extender una Clase: Una clase puede ser definida dos veces y la ultima definicion se agrega a la primera.

module TipoDeUsuario
  class Usuario

  end

  class Conductor < Usuario

  end

  class Pasajero < Usuario

  end
end

TipoDeUsuario::Conductor.new


class Persona
  def saludar
    'Hola!'
  end
end

class Persona
  def presentar
    'Soy una persona!'
  end
end

persona1 = Persona.new
persona1.saludar # => Hola!
persona1.presentar # => Soy una persona!

### Evitar Colisiones de Nombre ###
module ActiveRecord
  class Base

  end
end

module ActionView
  class Base

  end
end

ActiveRecord::Base
ActionView::Base

## Anidación ##
# Un módulo puede contener otros módulos
module Monkey
  module Currency
    class Dolar

    end
  end
end

Monkey::Currency::Dolar

### MIXINS ###
# Permiten incorporar los métodos definidos en un módulo como métodos de instancia o de clase.
# Con include los métodos quedan disponibles como métodos de instancia.
module Nadador
  def nadar
    puts 'Puedo Nadar!!'
  end
end

class Gato

end

class Perro
  include Nadador
end

bobby = Perro.new
puts bobby.nadar # => Puedo Nadar!!

# Con extend se incluyen todos los metodos de un modulo como metodos de clase.
module Nadador
  def nadar
    puts 'Puedo Nadar!!'
  end
end

class Gato

end

class Perro
  extend Nadador
end


### Multi herencia ###

# Ruby no posee multi herencia.
# Implementar mixins es una solución a esto, ya que a través de mixins se puede implementar tantos modulos como sea necesario.

module Nadador
  def Nadar
    puts 'Puedo Nadar!!'
  end
end

module Carnivoro
  def comer
    puts 'Puedo comer carne!'
  end
end

class Mamifero

end

class Gato < Mamifero
 include Carnivoro 
end

class Perro < Mamifero
  include Nadador
  include Carnivoro
end
