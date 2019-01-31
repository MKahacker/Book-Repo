while true
  talk = gets.chomp
  if talk == talk.upcase
    year = rand(20)
    puts 'NO, NOT SINCE 19' + (year + 30).to_s
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
  if talk == 'BYE'
    break
  end
end
