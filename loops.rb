i = 0

while i <= 10
	puts "i is now #{i}"
	i += 1
end

i = 0

until i > 10
	puts "i is now #{i}"
	i += 1
end

name = ''

until name == "Jacob"
	print "What is your name? "
	# name = gets.chomp
	name = "Jacob"
	puts "Hello #{name}!"
end

array = [1, 2, 3, 4, 5, 6]

for i in array do
	puts "i is #{i}"
end
# puts i => 6

for i in 1..10 do
	puts "i is #{i}"
end
# puts i => 10

for i in 1..5 do
	for j in 1..5 do
		print "#{i}#{j} "
	end
	puts
end

for animal in %w(goat cat horse elephant snake) do #=> ["goat", "cat", ...]
	next if animal == "cat"
	break if animal == "elephant"
	puts "The current animal is #{animal}"
end

name = ''

loop do
	print "Please, type your name: "
	name = gets.chomp
	if name == "Jacob"
		puts "Hi, dear #{name}!"
		break
	end
end











