# Blocks are like anonymous methods

# multiple line
# do |num|
#   num * 2
# end

# one line
# {|num| num * 2}

# musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# musicians.each do |musician|
#   puts "musician #{musician}"
# end


musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

upcased_first_names = musicians.map do |musician|
  first_name = musician.split.first
  upcased_first_name = first_name.upcase
  puts "[DEBUG] #{musician}'s first name is #{upcased_first_name}"

  upcased_first_name
end


# method can have multiple arguments in the block
# method(arg_1,...) do { some code }
