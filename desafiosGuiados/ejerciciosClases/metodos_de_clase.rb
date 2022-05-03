class FabricaLego
    @@count = 0 # variable de clase
    def initialize()
        @@count += 1
    end

    def self.contador_lego
        @@count
    end
end

# Crear 50 instancias
50.times{FabricaLego.new}

# Mostrar el contador de la clase
puts FabricaLego.contador_lego


