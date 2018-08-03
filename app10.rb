def test_factor(x)
    factor = Array[]
    d = 2
    while d*d <= x
	while x % d == 0
	    factor << d
	    x = x / d
	end
	d = d + 1
	if x > 1
	    factor << x
	end
    end
    puts factor
end

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
    puts num*num*num
    puts test_multiplicator(num)
end

print "Enter Number: "
num = gets.strip.to_i
test_factor(num)
test_fisher(num)