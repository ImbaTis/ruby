require 'json'

# Parsing JSON
filepath = 'beers.json'
# This step reads the file as it is
serialized_beatles = File.read(filepath)

# This step convert JSON to proper Ruby hashes
beatles = JSON.parse(serialized_beatles)

puts beatles

# Storing JSON
# bee{ beatles: [
#   {
#     first_name: 'John',
#     last_name: "Lennon",
#     instrument: "Guitar"
#   },
#   {
#     first_name: "Paul",
#     last_name: "McCartney",
#     instrument: "Bass Guitar"
#   },
# ]}

# File.open(filepath, 'wb') do |file|
#   file.write(JSON.generate(beatles))
# end
