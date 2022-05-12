empty_array = []

warriors = ['curry', 'wilkins','poole','draymond','porter']
puts warriors

# looping through an array
for i in warriors
  puts i
end

# Append element to array
warriors << "lebron"
p warriors

# delete by element or delete by index
warriors.delete('lebron')
warriors.delete_at(1)
p warriors

# Use EACH keyword in the array - multiple line
warriors.each do |warrior|
  puts "#{warrior.capitalize} is an indispensable part of the team."
end

# Using EACH keyword -condensed form
warriors.each {|warrior| puts "\n#{warrior.capitalize} is an essential part of the team."}

# each_with_index multiple line
warriors.each_with_index do |warrior, index|
  puts "#{index + 1} - #{warrior}"
end

warriors.each_with_index {|warrior,index| puts "#{index + 1} - #{warrior}"}

# map- transform one array to another one by applying some code on EACH element
upcased_warriors = warriors.map do |warrior|
  warrior.upcase
end

upcased_warriors = warriors.map {|warrior| warrior.upcase}
p upcased_warriors

# count if something is true in the array; note there is no IF in the condition
nums = [1,2,3,4,5,6,7,8,9,10,11,12,13]
new = nums.count do |num|
  num >=11
end
p new

# .each     -> the object it was called on (!)
# .map      -> a new Array with transformed elements
# .count    -> an Integer
# .select   -> a new Array with elements that met a condition
