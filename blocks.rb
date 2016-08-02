def say_hello(&block)
	puts "Hello World!"
	if block_given?
		block.call
	else
		puts "Block was not given."
	end
end

say_hello { puts "Hello again!" }

def say_hello_name(&block)
	name = block.call
	puts "Your name is #{name}."
end

say_hello_name do
	puts "This is inside of say_hello_name block."
	"Jacob"
end