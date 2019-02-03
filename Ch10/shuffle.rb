def shuffle arr
  rec_shuffle(arr, [])
end

def rec_shuffle array, shuffled
  if array.none?
    return shuffled
  end
  num = rand(array.length)
  shuffled.append array[num]
  array.delete_at num
  rec_shuffle(array, shuffled)
end

puts shuffle [1,2,3,4,5,6,7,8,9]
