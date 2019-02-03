def roman_numeral? string
  digits = ['M', 'D','C', 'L','X','V','I']
  string = string.upcase
  digits.each do |digit|
    if (string.count digit) > 4
      return false
    end
    if (((string.count digit) > 1) && ("DLV".include? digit))
      return false
    end
    while string.include? digit
      if string[0] == digit
        string = string[1..-1]
      else
        puts "Failed on #{digit} with string: #{string}"
        return false
      end
    end
  end
  true
end

puts roman_numeral? 'MMMII'
puts roman_numeral? 'mii'
puts roman_numeral? 'mxvi'
puts roman_numeral? 'mxivi'
