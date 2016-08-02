def show_numbers(numbers = 10)
	i = 0
	while i < 10
		yield i
		i += 1
	end
end

a = show_numbers(10){puts 1}


show_numbers do |number|
	puts "The current number is #{number}."
	number *= 2
	puts "The current number is multiplied by 2 is #{number}"
end 

def get_name(&block)
	print "What is your name? "
	name = gets.chomp
	yield name
	puts "It was nice to meet you, #{name}."
end

# puts get_name()

get_name do |name|
	puts "Hi, #{name}!"
	name = name.upcase
	puts "Your name uppercased is #{name}."
end

arr = [2, 4, 36, 21, 92, 56]

def change_value(array)
	array.each do |elem|
		puts "Current element of the array is #{elem}"
		yield elem
	end
end

change_value(arr) do |elem|
	elem *= 2
	puts "Element multiplied by 2 is equal to #{elem}"
end