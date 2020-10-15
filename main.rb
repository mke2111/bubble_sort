# Bubble sort function

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

def bubble_sort_by(array)
  count = 0

  while count < array.length - 1
    status = yield(array[count], array[count + 1]).positive?

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

bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
