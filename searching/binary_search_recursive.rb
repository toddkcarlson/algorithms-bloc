def binary_search(collection, value)
  low = 0
  high = collection.length - 1

  if low <= high
    mid = (low + high) / 2

    if collection[mid] == value
      return value

    elsif mid == 0
      return "not found"

    elsif collection[mid] > value
      high = mid - 1
      collection.delete_if { |i| i > collection[high] }
      binary_search(collection, value)

    elsif collection[mid] < value
      low = mid + 1
      collection.delete_if { |i| i < collection[low] }
      binary_search(collection, value)
    end  
  end
end