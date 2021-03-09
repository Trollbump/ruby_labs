require_relative "funcs.rb"

puts("Enter B, min, max: ")
b, min, max = gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i

print 'Block calculation of 1 func: '
p f(b, min, max) {|x| Math.sin(x)*x }

print 'Lambda calculation of 2 func: '
p f(b, min, max, ->(x) { Math.tan(x) })