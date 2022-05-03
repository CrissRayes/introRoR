# Dos objetos de distinas clases puedan responder al mismo metodo de forma diferente
# Una de las formas en la que podemos lograr poliformismo es a traves de la herencia

class Animal
end

class Perro < Animal
  def hablar # mismo método
    puts 'Guau' # respuesta distinta
  end
end

class Gato < Animal
  def hablar
    puts 'miau'
  end
end

class Vaca < Animal
  def hablar
    puts 'muuuuu'
  end
end

toby = Perro.new
toby.hablar
puts Vaca.ancestors
