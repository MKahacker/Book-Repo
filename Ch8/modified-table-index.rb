table = [['Chapter 1: Getting Started', 'page  1'],['Chapter 2: Numbers', 'page  9'],['Chapter 3: Letters', 'page 13']]
index = 0
puts 'Table of Contents.'.center(45)
puts
while index < table.length
  puts (table[index][0].ljust(30) + table[index][1].rjust(30))
  index = index + 1
end
