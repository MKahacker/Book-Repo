time = Time.new
time2 = time + 60

puts time
puts time2

puts Time.local(2000,1,1)
puts Time.local(1997, 2, 14, 12, 0)
puts Time.gm(1997, 2, 14)

mybday = Time.local(1997, 2, 14, 12, 31)
billion = mybday + 1000000000
puts mybday
puts billion
