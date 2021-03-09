def foo(c)
    c.call
    p 1111
end

pr = Proc.new do
    p 2
    return
end
foo(pr)
p 909
# l = ->() {
#     p 3
#     return
# }

# foo(l)