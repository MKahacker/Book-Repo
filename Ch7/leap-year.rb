puts 'What is the starting year?'
start = gets.chomp
puts 'What is the ending year?'
finish = gets.chomp
index = 0
while start.to_i + index <= finish.to_i
  year = start.to_i + index
  index = index + 1
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        puts year.to_s
      end
    else
      puts year.to_s
    end
  end
end
