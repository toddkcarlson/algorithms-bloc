# function bucketSort(array, n) is
#   buckets ← new array of n empty lists
#   for i = 0 to (length(array)-1) do
#     insert array[i] into buckets[msbits(array[i], k)]
#   for i = 0 to n - 1 do
#     nextSort(buckets[i]);
#   return the concatenation of buckets[0], ...., buckets[n-1]

require './heap_sort.rb'

def bucket_sort(collection)
  buckets = Array.new(26) {[]}

  collection.each do |x|
    buckets[x[0].ord - "A".ord] << x
  end 
  
 buckets.map! { |x| heap_sort(x) }

 buckets.flatten

end