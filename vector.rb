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
        Vector2.new(@x * vector.x, @y * vector.y)
    end

    def to_s()
        puts "(#@x,#@y)"
    end

end

    


    

    