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
    print "number in cube = #{cube} \n"
    arr_mult =  test_multiplicator(num)
    print "multiplicators: "
    sum = 1
    arr_mult.each do |val|
	print " #{val} "
	sum = sum * val 
    end
    puts ''
    if cube == sum
	puts "This is Fisher Number"
    else
	puts "This don't FisherNumber"
    end
end

print "Enter Number: "
num = gets.strip.to_i
test_fisher(num)