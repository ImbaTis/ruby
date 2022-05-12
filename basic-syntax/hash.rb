students_age = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}

puts students_age['Peter']

# Add key-value pairs
students_age['Terence'] = 28
puts students_age

# Delete key-value pairs by deleting key
students_age.delete('Emma')
puts students_age

# keyword each
students_age.each do |key, value|
  puts "#{key}'s age is #{value}"
end

# SYMBOL
paris = {
  country: 'France',
  population: 200000
}

puts paris[:country]

# Symbol vs String
# Strings for data. Symbols for keywords.
