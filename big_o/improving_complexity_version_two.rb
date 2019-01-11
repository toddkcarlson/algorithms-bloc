 # This method takes n arrays as input and combine them in sorted ascending  order
 # Improve time with quick_sort algorithm

 def poorly_written_ruby(*arrays)
    combined_array = []
    
    arrays.each do |array|
        combined_array.concat(array)
    end
    
    #O(n log n)
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

  quick_sort(combined_array)

 end

# cities = %w[New_York Los_Angeles Chicago Houston Philadelphia Phoenix San_Antonio San_Diego Dallas San_Jose Austin Indianapolis Jacksonville San_Francisco Columbus Charlotte Fort_Worth Detroit El_Paso Memphis Seattle Denver Washington Boston Nashville Baltimore Oklahoma_City Louisville Portland Las_Vegas Milwaukee Albuquerque Tucson Fresno Sacramento Long_Beach Kansas_City Mesa Virginia_Beach Atlanta Colorado_Springs Omaha Raleigh Miami Oakland Minneapolis Tulsa Cleveland Wichita Arlington]