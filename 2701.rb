def control(min,max,samples)
	arr1 = (min..max).to_a.sample(samples)
	arr2 = (min..max).to_a.sample(samples)

	found = 0

	arr1.each do |elem1|
		arr2.each do |elem2|
			if elem1 == elem2
				found += 1
				break
			end
			next
		end
	end

	puts "I due array hanno #{found} elementi in comune."
end

control 1,10000,6000