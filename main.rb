def bubble_sort(array)
  count = 0

  while count < array.length - 1
    status = array[count] > array[count + 1]

    if status
      array[count], array[count + 1] = array[count + 1], array[count]
      count = 0
    else
      count += 1
    end
  end

  p array
end

try_me = [3, 1, 5, 8, 9]

bubble_sort(try_me)
