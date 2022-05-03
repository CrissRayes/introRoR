### CREACION DE OBJETOS Y METODOS ###
# Las clases se crean y luego se untilizan para crear varias instancias.
# El comportamiento de los objetos son los métodos que se crean dentro del mismo:
class Persona
  def saludar
    puts "hola!!"
  end
end
:saludar

# Una vez instanciado el objeto, se puede usar sus métodos:
ignacio = Persona.new
ignacio.saludar # => "hola!!"

# Los métodos de instancia sólo pueden ser utilizados en ella.

# Ejemplo: Construir la clase Perro con el método ladrar.
class Perro
  def ladrar
    puts "bark"
  end
end

cachupin = Perro.new
firulais = Perro.new
cachupin.ladrar # => bark
firulais.ladrar # => bark


### ABSTRACCION ###
# Consiste en responder la pregunta: ¿Qué hace?
# Es importante que los nombres de los métodos sean descriptivos, mencionando su propósito.

# Estados de un Objeto
# Los objetos pueden guardar contenido que puede ser modificado.
# Estado se refiere al contenido del objeto.
# Para guardar estados de un objeto se usan las variables de instancia.

class Vehiculo
  def encender()
    @encendido = 'on'
  end
  def apagar()
    @apagado = 'off'
  end
  def estado()
    @encendido
  end
end

nissan = Vehiculo.new
toyota = Vehiculo.new
nissan.apagar
toyota.encender
nissan.estado # => 'off'
toyota.estado # => 'on'


### ENCAPSULACION ###
# Este principio señala que los estados internos del objeto deben ser protegidos del exterior.
# Cuando se requiere acceder a un estado (variable de instancia), se deben crear métodos getters y setters.
class Mascota
  def nombre # getter
    @nombre
  end
  def nombre=(nombre) # setter
    @nombre = nombre
  end
end

cachupin = Mascota.new
cachupin.nombre = "Cachupin" # usamos el setter para cambiar la variable dentro del objeto.

# attr_accessor (attributes accessors)
# Define de forma simultánea los getters y setters.

class Caja
  attr_accessor :ancho, :alto
end

c = Caja.new
c.ancho = 2 # Se usa el setter 
c.ancho # => 2 # Se usa el getter para obtener el valor

# getters y setters manuales
class Experimento
  attr_reader :a # Define el getter
  attr_writer :b # Define el setter
end

### METODO CONSTRUCTOR ###

# Método initialize
# Las clases al momento de instanciarse, llaman automáticamente al método initialize.
class Ejemplo
  def initialize(a)
    puts a
  end
end
Ejemplo.new(5) # => 5
Ejemplo.new('hola') # => hola

# El método initialize es usado habitualmente para asignar valores iniciales.
# Se agrega la instrucción @estado = estado para guardar el valor y poder seguir trabajando con el una vez terminado el constructor.

class Semaforo
  def initialize(estado)
    @estado = estado
  end
end

s1 = Semaforo.new(:rojo) # estado = :rojo
s2 = Semaforo.new(:verde) # estado = :verde

# Constructores con argumentos por defecto
class Casa
  def initialize(habitaciones = 3)
    @habitaciones = habitaciones
  end
end


################### CONSOLIDANDO LO APRENDIDO ###################################
class Mascota
  attr_accessor :nombre       # getter y setter
  def initialize(nombre)      # constructor
    @nombre = nombre          # @nombre es la variable de instancia y nombre es la variable local
  end
end
m1 = Mascota.new("Cachupin")  # instancia
#################################################################################


