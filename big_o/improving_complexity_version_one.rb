 # This method takes n arrays as input and combine them in sorted ascending order
 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
       combined_array.concat(array)
   end
  
  sorted_array = [combined_array.delete_at(combined_array.length-1)]  
   #O(n^2) ... (1 + n) * n / 2
   combined_array.each do |val|
     i = 0
     while i < sorted_array.length
       if val <= sorted_array[i]
         sorted_array.insert(i, val)
         break
       elsif i == sorted_array.length - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end
   # Return the sorted array   
   sorted_array
 end
 
# cities = %w[New_York Los_Angeles Chicago Houston Philadelphia Phoenix San_Antonio San_Diego Dallas San_Jose Austin Indianapolis Jacksonville San_Francisco Columbus Charlotte Fort_Worth Detroit El_Paso Memphis Seattle Denver Washington Boston Nashville Baltimore Oklahoma_City Louisville Portland Las_Vegas Milwaukee Albuquerque Tucson Fresno Sacramento Long_Beach Kansas_City Mesa Virginia_Beach Atlanta Colorado_Springs Omaha Raleigh Miami Oakland Minneapolis Tulsa Cleveland Wichita Arlington]