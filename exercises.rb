puts "Ruby Version: #{RUBY_VERSION}"
puts "Ruby Patch Level: #{RUBY_PATCHLEVEL} "

current_time = Time.now
cdt = current_time.strftime "%d/%m/%Y %H/%M"
puts "Current Date and Time: #{cdt}"

def mult(str, n)
	return str*n
end

i = 5
until i == 0
	puts mult("a",i)
	i-=1
end
