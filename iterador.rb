def producto_cartesiano(fst, snd)
    fst.each do |x|
        snd.each do |y|
            yield([x, y])
        end
    end
end

#Probando
producto_cartesiano(["a", "b", "c"], [4, 5]) {|x| print x, "\n"}