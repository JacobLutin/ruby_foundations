def palindrome?(sentence)
	sentence.downcase!.gsub!(" ", "")
	sentence == sentence.reverse
end

puts palindrome?('Race fast safe car')
puts palindrome?('Yreka Bakey')