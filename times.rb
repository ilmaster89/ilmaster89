def somma (*numbers)
	somma = 0
	numbers.each do |elem|
		somma += elem
	end
	puts somma
end
def sommaTRI (*numbers)
	somma = 0
	numbers.each do |elem|
		somma += elem*3
	end
	puts somma
end

somma(1,2,3,4,5)
sommaTRI(1,2,3,4,5,6)