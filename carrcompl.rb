def dado
	(1..6).to_a.sample
end

def lancio
	lan = [dado,dado,dado,dado]
end

puts lancio
