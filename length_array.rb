def length_finder(input_array)
  input_array.map do |element| 
  	element.length
  end
end

array = ["suck", "my", "cock"]

new_array = length_finder(array)
puts new_array