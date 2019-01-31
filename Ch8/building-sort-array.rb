array = []
while true
  element = gets.chomp
  if element == ''
    puts array.sort
    break
  end
  array.push element
end
