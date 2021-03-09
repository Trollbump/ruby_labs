class Triangle
    def initialize(x1, y1, x2, y2, x3, y3)
        @a = [x1, y1]
        @b = [x2, y2]
        @c = [x3, y3]
    end

    attr_reader :a
    attr_reader :b
    attr_reader :c

    def output
        @s = self.s
        print "a: ", @a, "\nb: ", @b, "\nc: ", @c, "\ns: ", @s, "\n"
        #puts @a, @b, @c, @s
    end

    def s
        ab = (((a[0] - b[0])**2) + ((a[1] - b[1])**2))**(0.5)
        ac = (((a[0] - c[0])**2) + ((a[1] - c[1])**2))**(0.5)
        bc = (((c[0] - b[0])**2) + ((c[1] - b[1])**2))**(0.5)
        @per = (ab+ac+bc)/2.0
        
        temp = (@per * (@per-ab) * (@per-ac) * (@per-bc))**(0.5)
        #[temp, per]
        temp
    end
end

class Prism < Triangle
    def initialize(h_temp, x1, y1, x2, y2, x3, y3)
        super(x1, y1, x2, y2, x3, y3)
        @h = h_temp

        @a += [0]
        @b += [0]
        @c += [0]
    end

    attr_reader :h

    def output
        print "a1: ", @a, "\nb1: ", @b, "\nc1: ", @c, "\n"
        a[2] = @h
        b[2] = @h
        c[2] = @h
        super
        print "h: ", @h, "\n"
    end

    def s
        square = super
        square*2 + @per*2*@h
        #temp*2 + per*2*@h
    end
end