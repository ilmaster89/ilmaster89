class Person
	attr_accessor :first_name, :last_name
	def initialize (first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end
end

class Group
	include Enumerable 
	attr_accessor :person 
	
	def initialize
		@person =[]
	end

	def add_person(*persons)
		@person += persons
	end

	def each
		@person.each {|person| yield person}
	end

	def to_s
		"#{person.first_name} #{person.last_name}"
	end
end



p1 = Person.new("Alberto", "Ramponi")
p2 = Person.new("Luigi","Ramponi")
p3 = Person.new("Sandra","Calcaterra")

g1 = Group.new

g1.add_person(p1,p2,p3)
selection = g1.select{|person| "Ramponi" === person.last_name}

puts selection.to_s

