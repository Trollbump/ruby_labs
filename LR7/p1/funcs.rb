def f(f_name, g_name)
    s = IO.read(f_name).split("\n").map do |x|
        x = x.to_i 
        x if (x%3 == 0) and (x%7 != 0)
    end
    .compact
    .join("\n")
    .then { |s| IO.write(g_name, s) }
end