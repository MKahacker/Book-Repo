def sort arr
  recursive_sort(arr, [])
end

def recursive_sort array, sorted_array
  if array.none?
    return sorted_array
  else
    min = array[0]
    i = 0
    while array[i]
      if min > array[i]
        min = array[i]
      end
      i = i + 1
    end
    array.delete min
    sorted_array.append min
    recursive_sort array, sorted_array
  end
end

puts (sort(['are', 'able','recipe', 'cat', 'bold', 'xanax', 'zebra','under'])).to_a
