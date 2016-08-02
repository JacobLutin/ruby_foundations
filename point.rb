class Point

	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end
end

class Vector

	def initialize(first_point, second_point)
		@first_point = first_point
		@second_point = second_point
	end

	def x
		@second_point.x - @first_point.y
	end

	def y
		@second_point.y - @first_point.y
	end

	def length
		Math.hypot(x, y)
	end

	def multiply(other_vector)
		x * other_vector.x + y * other_vector.y
	end

	def angle(other_vector)
		multiply(other_vector) / (length * other_vector.length)
	end

end
