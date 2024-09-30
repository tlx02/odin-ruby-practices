def bubble_sort(arr)
  (0...(arr.length)).reverse_each do |i|
    (0...i).each do |j|
      next unless arr[j] > arr[j + 1]

      temp = arr[j + 1]
      arr[j + 1] = arr[j]
      arr[j] = temp
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0,2,2,3,4,78]
