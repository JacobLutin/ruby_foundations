person = {
	name: 'jacob',
	email: 'jacoblutin',
	city: 'moscow',
	university: {
		name: 'BMSTU',
		founder: 'Bauman',
		year: 1856
	}
}


class Person

	attr_reader :university

	def initialize(name='', university='')
		@name = name
		@university = university
	end

	def hello
		puts "Hello #{@name}!"
	end

	def session
		@university = ''
	end
end

p = Person.new('Jacob', 'BMSTU')

p.hello