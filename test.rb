class Person
	attr_reader :age
	attr_accessor :name

	def initialize (name, age)
		@name = name
		self.age = age
	end

	def age= (new_age)
		@age ||= 30
		@age = new_age unless new_age > 120
	end

end

person1 = Person.new("Alberto", )


puts person1.age





