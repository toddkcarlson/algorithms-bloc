# Pick a pivot point.
# Compare each item to the pivot point, if it is greater than the pivot point then move it to the right of the pivot point.
# Repeat steps one and two with each unsorted sub-collection.

def quick_sort(collection)
  return collection if collection.length <= 1
  pivot = collection.sample

  left = Array.new
  right = Array.new

  collection.each do |x|
    if x <= pivot
      left << x
    else
      right << x
    end
  end

  quick_sort(left) + quick_sort(right)

end