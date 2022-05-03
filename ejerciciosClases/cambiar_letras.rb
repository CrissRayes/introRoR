class Texto
attr_accessor :contenido
  def initialize(contenido)
    @contenido = contenido
  end
end

def remplazar_vocales_por(texto, letra_nueva)
  texto.contenido.gsub(/[aeiou]/, letra_nueva)
end

contenido = Texto.new('La mar estaba serena')

puts remplazar_vocales_por(contenido, 'a')
