require_relative "funcs.rb"

puts("Enter string for replace: ")
rep = gets.chomp

print("Enter strings: ")
#s = input()
s = ''
ARGF.each_line do |line|
    s += line
end



output(s, rep)