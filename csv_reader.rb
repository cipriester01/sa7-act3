# code for csv parser to array. reads csv file
csv_filepath = 'data.csv'
csv_data = File.read(csv_filepath)
# splits data into rows
rows = csv_data.split("\n")
# parse by header
headers = rows.shift.split(',')

# make initial array
csv_to_array = []

# each row converts to hash
rows.each do |row|
  values = row.split(',')
  hash = {}
  # create hash with headers and indexes
  headers.each_with_index do |header, index|
    hash[header] = values[index]
  end
  # add hash to array
  csv_to_array.push(hash)
end
# print
puts csv_to_array
