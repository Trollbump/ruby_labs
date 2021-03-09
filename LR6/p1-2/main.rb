require_relative 'funcs.rb'

def calculate1(eps)
    sum, iterations = sum_method_1(eps)
    puts "Epsilon = #{eps}\nSum of the sequence: #{sum}\nNumber of iterations: #{iterations}"
end

def calculate2(eps)
    sum, iterations = sum_method_2(eps)
    puts "Epsilon = #{eps}\nSum of the sequence: #{sum}\nNumber of iterations: #{iterations}"
end

puts '------------------Method 1------------------'
calculate1(10**-3)
puts "\n"
calculate1(10**-4)

puts "\n"

puts '------------------Method 2------------------'
calculate2 10**-3
puts "\n"
calculate2 10**-4