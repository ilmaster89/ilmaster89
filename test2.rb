class Dog
	def to_s
		"Dog"
	end

	def bark
		"WOOOOF!"
	end
end

class Doggo < Dog

	def bark 
		"Woof!"
	end
end

dog = Dog.new
doggo = Doggo.new

puts dog.bark
puts doggo.bark