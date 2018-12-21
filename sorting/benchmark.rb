require 'benchmark'
require './bubble_sort.rb'
require './insertion_sort.rb'
require './merge_sort.rb'
require './selection_sort.rb'
require './quick_sort.rb'
require './bucket_sort.rb'
require './heap_sort.rb'

cities = %w[New_York, Los_Angeles, Chicago, Houston, Philadelphia, Phoenix, San_Antonio, San_Diego, Dallas, San_Jose, Austin, Indianapolis, Jacksonville, San_Francisco, Columbus, Charlotte, Fort_Worth, Detroit, El_Paso, Memphis, Seattle, Denver, Washington, Boston, Nashville, Baltimore, Oklahoma_City, Louisville, Portland, Las_Vegas, Milwaukee, Albuquerque, Tucson, Fresno, Sacramento, Long_Beach, Kansas_City, Mesa, Virginia_Beach, Atlanta, Colorado_Springs, Omaha, Raleigh, Miami, Oakland, Minneapolis, Tulsa, Cleveland, Wichita, Arlington]

Benchmark.bm do |x|
  x.report("bubble_sort   :") { bubble_sort(cities) }
  x.report("insertion_sort:")  { insertion_sort(cities) }
  x.report("merge_sort    :") { merge_sort(cities) }
  x.report("selection_sort:")  { selection_sort(cities) }
  x.report("quick_sort    :") { quick_sort(cities) }
  x.report("bucket_sort   :") { bucket_sort(cities) }
  x.report("heap_sort     :") { heap_sort(cities) }  
end