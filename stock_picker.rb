def stock_picker(arr)
  best_days = [0, 1]
  arr.each_with_index do |val, index|
    if arr[index] < arr[best_days[0]]
      sell_index = arr.index(arr.slice(index, arr.length-1).max)
      if arr[sell_index] - arr[index] > arr[best_days[1]] - arr[best_days[0]]
        best_days[0] = index
        best_days[1] = sell_index
      end
    end
  end
  return best_days
end
  
puts stock_picker([17,3,6,9,15,8,6,1,10])
  # => [1,4]  for a profit of $15 - $3 == $12