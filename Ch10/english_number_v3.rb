def english_number num
  if num < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if num == 0
    return 'zero'
  end
  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teenagers_place = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen','eighteen', 'nineteen']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  left = num

  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
        num_string = num_string + ' '
    end
  end

  write = left/100
  left = left - write*100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
        num_string = num_string + ' '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) &&(left > 0))
      num_string = num_string + teenagers_place[left -1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

puts english_number(7)
puts english_number(78)
puts english_number(787)
puts english_number(1000)
puts english_number(50000)
