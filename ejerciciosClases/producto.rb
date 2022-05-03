# Se pide crear la clase producto, un producto tiene nombre y stock, y por defecto, si el stock no se especifica será cero. 
# El nombre se define al momento de crearlo.

class Producto
  def initialize (nombre, stock = 0)
    @nombre = nombre
    @stock = stock
  end
end
