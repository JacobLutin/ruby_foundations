treehouse = {
	"business_name" => "treehouse",
	"location" => "treehouse_island",
	"phone_number" => "1-800-900-3421"
}
treehouse.keys
treehouse.values

treehouse.has_key?('business_name')
treehouse.has_value?('treehouse_island')

treehouse.empty?

h = Hash.new
h.empty?

business_name = treehouse.delete("business_name")
business_name 		#=> treehouse
treehouse 		 		#=> {"location"=>"treehouse_island", "phone_number"=>"1-800-900-3421"}

treehouse["business_name"] = "treehouse"

treehouse.clear  	#=> {}
treehouse.empty?  #=> true

treehouse = {"location"=>"treehouse_island", "phone_number"=>"1-800-900-3421", "business_name"=>"treehouse"}


treehouse.to_a		#=> [["location", "treehouse_island"], ["phone_number", "1-800-900-3421"], ["business_name", "treehouse"]]
array = treehouse.to_a
array[0] 					#=> ["location", "treehouse_island"]

treehouse.delete_if { |key, value| key == "location" }
treehouse 				#=> {"phone_number"=>"1-800-900-3421", "business_name"=>"treehouse"}

treehouse = {"location"=>"treehouse_island", "phone_number"=>"1-800-900-3421", "business_name"=>"treehouse"}

treehouse.each do |key, value|
	# puts "The key at #{key}, is #{value}"
end

treehouse.each_key { |key| key }		
treehouse.each_value { |value| value }

treehouse.select! { |key, value| key == "location" }
treehouse 				#=> {"location"=>"treehouse_island"}

treehouse = {"location"=>"treehouse_island", "phone_number"=>"1-800-900-3421", "business_name"=>"treehouse"} 

treehouse.keep_if { |key, value| key == "location" } #.treehouse.select
treehouse 				#=> {"location"=>"treehouse_island"}

treehouse = {"location"=>"treehouse_island", "phone_number"=>"1-800-900-3421", "business_name"=>"treehouse"} 

array = treehouse.find { |key, value| key == "phone_number" }
array 						#=> ["phone_number", "1-800-900-3421"]

array = treehouse.find_all { |key, value| value.match('house') }
array     			  #=> [["location", "treehouse_island"], ["business_name", "treehouse"]]

treehouse.all? { |key, value| value.match('house') }
#=> false

treehouse.any? { |key, value| value.match('house') }
#=> true

treehouse.count 	#=> 3

array = treehouse.map do |key, value|
	value = "(treehouse) #{value}"
end

array 						#=> ["(treehouse) treehouse_island", "(treehouse) 1-800-900-3421", "(treehouse) treehouse"]

treehouse.reject! { |key, value| value.match('house') }
#=> {"phone_number"=>"1-800-900-3421"}






