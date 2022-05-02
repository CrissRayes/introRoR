# Supongamos que tienen canastas. Ejemplo
# Cada canasta se compone de cierta cantidad de frutas, velas aromáticas y/o tarjetas.
# Se pide crear la clase Canasta que reciba las cantidades de cada elemento y un método que suma la cantidad de elementos por separado y devuelva la cuenta total.
# Se pide además, agregar el método + para poder juntar una canasta con otra, este método debe devolver una canasta nueva con la suma de cada elemento por separado.

class Canasta
  attr_accessor :frutas, :velas, :tarjetas
  def initialize(frutas, velas, tarjetas)
    @frutas = frutas
    @velas = velas
    @tarjetas = tarjetas
  end
  def +(otra_canasta)
    Canasta.new(
      @frutas + otra_canasta.frutas,
      @velas + otra_canasta.velas,
      @tarjetas + otra_canasta.tarjetas
    )
  end
  def cantidad_elementos
    @frutas + @velas + @tarjetas
  end
end

canasta1 = Canasta.new(1,2,3)
canasta2 = Canasta.new(2,2,1)
union_de_canastas = canasta1 + canasta2
puts union_de_canastas.cantidad_elementos
