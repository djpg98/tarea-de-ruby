class Moneda

    attr_accessor :valor

    def initialize(monto)
        @valor = monto
    end

    def en(moneda)

        if itself.class == Dolar
            current = itself.valor
        elsif itself.class == Yen
            current = itself.valor*0.0093
        elsif itself.class == Euro
            current = itself.valor*1.11
        elsif itself.class == Bolivar
            current = itself.valor*0.0000135
        elsif itself.class == Bitcoin
            current = itself.valor*8939.96
        else
            raise 'Moneda no soportada'
        end

        if moneda == :dolares
            return Dolar.new(current)
        elsif moneda == :yens
            return Yen.new(current*107.32)
        elsif moneda == :euros
            return Euro.new(current*0.9)
        elsif moneda == :bolivares
            return Bolivar.new(current*74051)
        elsif moneda == :bitcoins
            return Bitcoin.new(current*0.00011)
        else
            raise 'Moneda no soportada'
        end
    end

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
end

class Yen < Moneda
    def comparar(moneda)
        moneda.comparar_yen(itself)
    end
end

class Euro < Moneda
    def comparar(moneda)
        moneda.comparar_euro(itself)
    end
end

class Bolivar < Moneda
    def comparar(moneda)
        moneda.comparar_bolivar(itself)
    end
end

class Bitcoin < Moneda
    def comparar(moneda)
        moneda.comparar_bitcoin(itself)
    end
end

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