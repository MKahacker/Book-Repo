def roman_numerals number
  roman_number = ''
  digits = [1000,500,100,50,10,5,1]
  letters = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
  index = [0,1,2,3,4,5,6]
  index.each do |j|
    if (number/digits[j] > 0)
      count = number/digits[j]
      number = number - count*digits[j]
      while (count > 0)
        roman_number = roman_number + letters[j]
        count = count -1
      end
    end
  end
  return roman_number
end

while true
  puts 'Enter a number to see its roman numeral:'
  num = gets.chomp
  if num == 'q'
    break
  end
  puts roman_numerals num.to_i
end
