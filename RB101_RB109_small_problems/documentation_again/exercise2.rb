require 'date'

# Creates a date object in format year-month-day. 
# The negative numbers means a relative one from the last to the begining of month/day
# The defaults are: year = -4712, month = 1, day =1

puts Date.civil               #=> #<Date: -4712-01-01 ...>
puts Date.civil(2016)         #<Date: 2016-01-01 ...>
puts Date.civil(2016, 5)      #<Date: 2016-05-01 ...>
puts Date.civil(2016, 5, 13)  #<Date: 2016-05-13 ...>