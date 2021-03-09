def sum_method_1(eps)
    component = 1
    sum = 0
    num_iter = 0
    while (component >= eps)
        sum += component
        num_iter += 1
        #print sum, ' - ',  component
        #puts ' '
        component /= 2.0
    end
    [sum, num_iter]
end

def get_elem(k)
    1.0 / (2**k)
  end

def elements_generator
    Enumerator.new do |y|
      k = 0
      loop do
        y << get_elem(k)
        #puts get_elem(k)
        k += 1
      end
    end
  end

def sum_method_2(eps)
    elements = elements_generator.take_while { |elem| elem >= eps }
    [elements.sum, elements.size]
end

#puts func_method_1(0.1)