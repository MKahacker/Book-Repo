require 'time'

def leap_year year
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        #puts "Leap year is #{year}"
        return true
      end
    else
      #puts "Leap year is #{year}"
      return true
    end
  end
  return false
end
read = File.read 'bday.txt'
array = read.split("\n")
bdays = {}
array.each do |entry|
  line = entry.split(",")
  bdays[line[0]] = line[1]+ ', ' +line[2]
end
bdays.each do |key, val|
  puts "#{key}: #{val}"
end

while true
  puts "Please enter a name to find out the person's next birth day."
  name = gets.chomp
  if name == 'q'
    break
  end
  str_date = bdays[name]
  date = Time.parse(str_date)
  today = Time.new
  #puts date.year
  while (date < today)
    if ((leap_year(date.year)) == false)
      date = date + (3600*24*365)
    else
        date = date + (3600*24*366)
    end
  end
  puts date.year.to_s + '-' + date.month.to_s + '-' + date.day.to_s
end
