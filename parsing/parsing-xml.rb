require 'nokogiri'

file = File.open("beers.xml")
document = Nokogiri::XML(file)

document.root.xpath("beatle").each do |beatle|
  first_name = beatle.xpath("Name").text
  last_name = beatle.xpath("Appearance").text
  instrument = beatle.xpath("Origin").text

  puts "#{first_name} #{last_name} played #{instrument}"
end
