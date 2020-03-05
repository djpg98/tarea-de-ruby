def producto_cartesiano(fst, snd)
    fst.each do |x|
        snd.each do |y|
            yield([x, y])
        end
    end
end

producto_cartesiano(["a", "b", "c"], [4, 5]) {|x| print x, "\n"}

class Producto_cartesiano
    def initialize(fst, snd)
        @left = fst
        @right = snd
    end

    def each()
        @left.each do |x|
            @right.each do |y|
                yield([x, y])
            end
        end
    end
end

Producto_cartesiano.new(["a", "b", "c"], [4, 5]).each {|x| print x, "\n"}