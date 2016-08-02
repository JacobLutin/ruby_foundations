class A 
	attr_accessor :a
	# @a = 0
	def fx
		puts @a * 5
	end
end

class B < A

	def f
		puts @a
	end
end

b = B.new
b.a = 1
b.f
b.fx