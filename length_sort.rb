def sort_string(string)
  array = string.split(' ')
  array.sort do |a,b|
    a.length <=> b.length
  end.join(' ')
end
 
puts sort_string("Mamku eba tvou")