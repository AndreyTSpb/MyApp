def test_multiplicator(num)
    multiplicator = Array[]
    i = 1
    while i  <= num
	if num % i == 0
	    multiplicator << i
	end
	i = i + 1
    end
    return  multiplicator
end

def test_fisher(num)
    cube = num*num*num
    arr_mult =  test_multiplicator(num)
    sum = 1
    str =''
    arr_mult.each do |val|
	str= str + "*#{val}"
	sum = sum * val 
    end
    res = ''
    if cube == sum
	res = "This is Fisher Number"
    else
	res = "This don't FisherNumber"
    end
    return arr = {'cube' => cube,
		  'str'  => str,
		  'sum'  => sum,
		  'res'  => res,
		}
end

print "Enter Number: "
num = gets.strip.to_i
arr = test_fisher(num)
puts '----------------'
puts "Number #{num} in cube = #{arr['cube']}"
puts "Multiplicators: #{arr['str']} = #{arr['sum']}"
puts arr['res']