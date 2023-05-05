puts "Event Manager Initialized"
require 'csv'

File.exist? "event_attendees.csv"
small_csv = "event_attendees.csv"

contents = CSV.open(
    small_csv,
    headers: true,
    header_converters: :symbol
  )

def clean_zipcode(zipcode)
    #!an even more succient way to write it without all the extra if/else
    zipcode.to_s.rjust(5, '0')[0..4]
    # if zipcode.nil?
    #     zipcode = '00000'
    # elsif zipcode.length < 5
    #     zipcode = zipcode.rjust(5, '0')
    # elsif zipcode.length > 5
    #     zipcode = zipcode[0..4]
    # else
    #     zipcode
    # end
end

contents.each do |row|
    name = row[:first_name]
    zipcode = clean_zipcode(row[:zipcode])
    #*Use pseudocode for Cleaning up problem areas
    #if the zip code is exactly five digits we can assume that it is okay
    #is the zip code is more than five digits, truncate it to the first five digits
    #if the zip code is less than five digits, add zeroes to the front until it becomes five digits
    puts "#{name}, #{zipcode}"
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