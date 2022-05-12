require 'json'
require 'open-uri'

url = 'https://api.github.com/users/ssaunier'
url_serialized = URI.open(url).read
user = JSON.parse(url_serialized)

puts "#{user['name']} is now in #{user['location']}. He likes #{user['bio'].downcase}"
