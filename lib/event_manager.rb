puts "Event Manager Initialized"
require 'csv'

File.exist? "event_attendees.csv"
small_csv = "event_attendees.csv"

#!Look for a solution before beginning a solution
contents = CSV.open(
    small_csv,
    headers: true,
    header_converters: :symbol
  )
  
  contents.each do |row|
    name = row[:first_name]
    puts name
  end
# lines = File.readlines(small_csv)
# lines.each_with_index do |line, idx|
#     next if idx == 0
#     columns = line.split(",")
#     name = columns[2]
#     puts name
# end


# lines.each do |line|
#     #can skip over rows if we do not want that row
#     # next if line == "  ID,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode" #*does not account for if things are changed in the future, this is essentially hardcoded in
#     row_idx = row_idx + 1 #*can skip the header row without hardcoding things in
#     columns = line.split(",")
#     name = columns[2]
#     puts name
# end


#*reads the file line by line
# contents = File.read('event_attendees.csv')
# puts contents

# Using readlines we can seperate each file into its own array
#*reads the file line by line
# lines.each do |line|
#     puts line
# end

#*Know the name of the variables in the file that we are working with to be able to have quicik access to the things that we want to have access to
#ID,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode
# !Readlines turned the csv into an array of strings, use a string method to have access to the element that we want to access, and refer to it's place within that column as well
# lines = File.readlines(small_csv)
# row_idx = 0