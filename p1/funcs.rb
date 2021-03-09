def output(a, b)
    puts calc(a, b)
end
    
def calc(a, b)
    temp = b.abs + Math.cos(b**2)
    if (temp != 0)
        res = (Math.sin(a) - b)/(temp)
    else
        res = "ERROR"
    end
    res
end
