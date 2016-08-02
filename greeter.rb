class Greeter

	attr_accessor :name

	def initialize(name = "World")
		@name = name
	end

	def say_hi
		puts "Hello #{@name}!"
	end

	def say_bye
		puts "Goodbye #{@name}."
	end
end

g = Greeter.new("Jacob")

g.name = "John"

g.say_hi

#g.say_hi

#g.say_bye

# puts Greeter.instance_methods(false)

# puts g.respond_to?("name")
# puts g.respond_to?("name=")
# puts g.respond_to?("say_hi")
# puts g.respond_to?("lol")

