class Vector2

    attr_accessor :x, :y

    def initialize(x_coord, y_coord)
        @x = x_coord
        @y = y_coord
    end

    def magnitud
        Math.sqrt(@x**2 + @y**2)
    end

    def +(vector)
        Vector2.new(@x + vector.x, @y + vector.y)
    end

    def -(vector)
        Vector2.new(@x - vector.x, @y - vector.y)
    end

    def -@()
        Vector2.new(-@x, -@y)
    end

    def ==(vector)
        @x == vector.x and @y == vector.y
    end

    def *(vector)
        @x * vector.x + @y * vector.y
    end

    def to_s()
        "(#@x,#@y)"
    end

end
    
class Complejo < Vector2

    def initialize(r_part, i_part=0)
        super(r_part, i_part)
    end

    def *(complejo)
        Complejo.new(@x * complejo.x - @y * complejo.y, @x * complejo.y + @y * complejo.x)
    end

    def ~@()
        Complejo.new(@x, -@y)
    end

    def /(complejo)
        begin
            raise "No se puede dividir entre 0" if complejo == Complejo.new(0) #El número complejo que multiplicado por su conjugada da 0 es 0
            numerador = self * ~complejo
            denominador = (complejo.x ** 2 + complejo.y ** 2).to_f #Hay que pasar el denominador a float para que / no sea división entera
            Complejo.new(numerador.x / denominador, numerador.y / denominador)
        rescue
            puts "No se puede dividir entre 0"
        end
    end

    def to_s()
        if @x != 0
            if @y > 0
                "#@x + #{@y}i"
            elsif y == 0
                "#@x"
            else
                "#@x - #{@y.abs}i"
            end
        else
            "#{@y}i"
        end
    end

end
    