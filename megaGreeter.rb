class MegaGreeter

	attr_accessor :names

	def initialize(names = "World")
		@names = names
	end

	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello dear #{@names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Goodbye #{@names.join(", ")}. Come back!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end

names = ["John", "Robert", "Dmitry", "Vova"]
names = "Jacob"

g = MegaGreeter.new(names)

g.say_hi
g.say_bye