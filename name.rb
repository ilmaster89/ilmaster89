def is7 (*numbers)
	return (numbers[0] == 7 or numbers[-1] == 7)
end

def areSame (*numbers)
	return (numbers[0] == numbers[-1])
end

puts is7(7,2,3,4,5,6)
puts areSame(1,2,3,4,5,1)