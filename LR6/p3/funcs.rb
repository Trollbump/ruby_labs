def f(b, min, max, func = nil)
    (min..max).step(0.1).map do |x|
        if block_given?
            yield(x)
        elsif func.is_a? Proc
            func.call(x)
        end
    end
    .compact
    .max
    .then { |max| b / max if max != 0 || 0 }
end

=begin
p f(1, -2, 2) {|x| Math.sin(x)*x }

p f(1, -2, 2, ->(x) { Math.sin(x)*x })

p f(1, -2, 2, proc { |x| Math.tan(x) })

p f(1, -2, 2, ->(x) { Math.tan(x) })
=end