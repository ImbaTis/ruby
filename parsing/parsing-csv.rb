require 'csv'

# Parse CSV file
file_path = 'beers.csv'
CSV.foreach(file_path) do |row|
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end

# If contains headers, use headers: :first_row syntax
new_path = 'beetles.csv'
CSV.foreach(new_path, headers: :first_row) do |row|
  puts "#{row['First Name']}-#{row['Last Name']} played #{row['Instrument']}"
end

# Store csv, if there is no file then write a new one
filepath = 'bees.csv'

CSV.open(filepath, "wb") do |csv|
  csv << ["Name", "Age", "Nationality"]
  csv << ["Terence", 28, "Chinese"]
  csv << ["Jack","24", "British"]
end
