require 'benchmark'
require './bubble_sort.rb'
require './insertion_sort.rb'
require './merge_sort.rb'
require './selection_sort.rb'

cities = %w[New York, Los Angeles, Chicago, Houston, Philadelphia, Phoenix, San Antonio, San Diego, Dallas, San Jose, Austin, Indianapolis, Jacksonville, San Francisco, Columbus, Charlotte, Fort Worth, Detroit, El Paso, Memphis, Seattle, Denver, Washington, Boston, Nashville, Baltimore, Oklahoma City, Louisville, Portland, Las Vegas, Milwaukee, Albuquerque, Tucson, Fresno, Sacramento, Long Beach, Kansas City, Mesa, Virginia Beach, Atlanta, Colorado Springs, Omaha, Raleigh, Miami, Oakland, Minneapolis, Tulsa, Cleveland, Wichita, Arlington]

Benchmark.bm do |x|
  x.report("bubble_sort   :") { bubble_sort(cities) }
  x.report("insertion_sort:")  { insertion_sort(cities) }
  x.report("merge_sort    :") { merge_sort(cities) }
  x.report("selection_sort:")  { selection_sort(cities) }
end