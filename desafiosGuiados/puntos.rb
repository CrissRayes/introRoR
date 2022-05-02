# Se pide crear una clase punto para representar puntos dentro de un mapa, los puntos tendrán coordenada x y una coordenada y.
# Se pide que la clase punto debe poder ser inicializada en cualquier posición.
# La posición de un punto puede ser vista fuera de la clase, pero no debe poder ser cambiada desde fuera.
# Se pide que la clase punto tenga un método para avanzar que permita incrementar la coordenada x en una unidad.

class Punto
  attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
  def avanzar()
    @x += 1
    @y +=1
    print "x: #{@x}, y: #{@y}"
  end
end

# Probando la clase
p1 = Punto.new(2,3)
p1.avanzar


