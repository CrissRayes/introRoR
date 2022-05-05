#class Sale
  #def initialize(params)
    #@params = params
  #end
  #def call
    #puts "Params in class #{@params}"
  #end
#end

#sale = Sale.new("Some data...")
#sale.call

## Podemos emular el comportamiento de la clase Sale con un módulo
## Y en menos líneas de código
module Sale
    def self.call(params)
      puts "Params in module: #{params}" # Ojo, es variable local, no es variable de instancia
    end
end

Sale.call("Some data")

