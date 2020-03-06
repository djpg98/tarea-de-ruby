class Moneda

    attr_accessor :valor
    
    def initialize(monto)
        @valor = monto
    end

    # Parte B
    def en(moneda)
        
        # valor de la moneda * tasa de conversion a dolares 
        # * tasa de conversion de dolares a moneda destino redondeado a 2 cifras
        case moneda
        when :dolares
            return Dolar.new((itself.valor*itself.rate_to_usd()).round(2))
        when :yens
            return Yen.new((itself.valor*itself.rate_to_usd())*107.32.round(2))
        when :euros
            return Euro.new((itself.valor*itself.rate_to_usd())*0.9.round(2))
        when :bolivares
            return Bolivar.new((itself.valor*itself.rate_to_usd())*74051.round(2))
        when :bitcoins
            return Bitcoin.new((itself.valor*itself.rate_to_usd())*0.00011.round(2))
        else
            raise 'Moneda no soportada'
        end
    end

    # Parte C
    def comparar_dolar(moneda)
        if itself.en(:dolares).valor < moneda.valor 
            return :mayor
        elsif itself.en(:dolares).valor == moneda.valor 
            return :igual
        else
            return :menor
        end
    end
    
    def comparar_yen(moneda)
        if itself.en(:yens).valor < moneda.valor 
            return :mayor
        elsif itself.en(:yens).valor == moneda.valor 
            return :igual
        else
            return :menor
        end
    end

    def comparar_euro(moneda)
        if itself.en(:euros).valor < moneda.valor 
            return :mayor
        elsif itself.en(:euros).valor == moneda.valor 
            return :igual
        else
            return :menor
        end
    end

    def comparar_bolivar(moneda)
        if itself.en(:bolivares).valor < moneda.valor 
            return :mayor
        elsif itself.en(:bolivares).valor == moneda.valor 
            return :igual
        else
            return :menor
        end
    end

    def comparar_bitcoin(moneda)
        if itself.en(:bitcoins).valor < moneda.valor 
            return :mayor
        elsif itself.en(:bitcoins).valor == moneda.valor 
            return :igual
        else
            return :menor
        end
    end

end

class Dolar < Moneda

    def comparar(moneda)
        moneda.comparar_dolar(itself)
    end

    # Esta funcion se usa para la parte B
    # Se pasan todas las monedas a dolares
    # Y luego se pasan a la moneda destino
    def rate_to_usd()
        return 1
    end

end

class Yen < Moneda
    
    def comparar(moneda)
        moneda.comparar_yen(itself)
    end

    def rate_to_usd()
        return 0.0093
    end
    
end

class Euro < Moneda

    def comparar(moneda)
        moneda.comparar_euro(itself)
    end

    def rate_to_usd()
        return 1.11
    end
    
end

class Bolivar < Moneda

    def comparar(moneda)
        moneda.comparar_bolivar(itself)
    end

    def rate_to_usd()
        return 0.0000135
    end

end

class Bitcoin < Moneda

    def comparar(moneda)
        moneda.comparar_bitcoin(itself)
    end

    def rate_to_usd()
        return 8939.96
    end

end

# Parte A
class Integer 

    def dolares()
        Dolar.new(itself)
    end

    def yens()
        Yen.new(itself)
    end

    def euros()
        Euro.new(itself)
    end

    def bolivares()
        Bolivar.new(itself)
    end

    def bitcoins()
        Bitcoin.new(itself)
    end
end

class Float 

    def dolares()
        Dolar.new(itself)
    end

    def yens()
        Yen.new(itself)
    end

    def euros()
        Euro.new(itself)
    end

    def bolivares()
        Bolivar.new(itself)
    end

    def bitcoins()
        Bitcoin.new(itself)
    end
end