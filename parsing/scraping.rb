require 'open-uri'
require 'nokogiri'

puts "Enter the ingradient you want to search."
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

hash = html_doc.search(".standard-card-new__article-title").map do |title|
  {title.text.strip => title.attribute("href").value}
end

puts hash
