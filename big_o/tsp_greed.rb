class City
  attr_reader :name
  attr_accessor :neighbors  
  
  def initialize(name)
    @name = name
    @neighbors = []
  end
  
  def connect(adjacent_city, distance)
    @neighbors << [adjacent_city, distance]
    @neighbors = quick_sort(@neighbors)
  end

  def print
    neighbors.each do |a|
     puts "#{self.name}: #{a[0].name}"
    end
  end

  def quick_sort(collection)
    return collection if collection.length <= 1
    return collection if collection[0][0] == collection[1][0]   
    pivot = collection.sample[1]

    left = Array.new
    right = Array.new

    collection.each do |x,y|  
      if y <= pivot
        left << [x,y]
      else
        right << [x,y]
      end
    end
     quick_sort(left) + quick_sort(right)
  end  
end

class Graph

  def initialize
    @nodes = {}
  end
  
  def add_node(node)
    @nodes[node.name] = node
  end
  
  def add_edge(node1, node2, distance)
    node1.connect(node2, distance)
    node2.connect(node1, distance)
  end

  def print(nodes)
    nodes.inspect
  end

  def find_path(starting_node)       
    visited = []
    to_visit = []
    dataset = starting_node.neighbors.length - 1
    counter = 0
    i = 0

    visited << starting_node.name
    current = starting_node

    while counter <= dataset 
      if visited.include?(current.neighbors[i][0].name)
        i = i + 1
      else     
        visited << current.neighbors[i][0].name
        current = current.neighbors[i][0]
        counter = counter + 1
        i = 0
      end
    end
    visited << starting_node.name
    puts "Path found! #{visited}"
  end

end

# boston = City.new("Boston")
# chicago = City.new("Chicago")
# new_york = City.new("New York")
# seattle = City.new("Seattle")
# atlanta = City.new("Atlanta")

# path = Graph.new
# path.add_node(boston)
# path.add_node(chicago)
# path.add_node(new_york)
# path.add_node(seattle)
# path.add_node(atlanta)
# path.add_edge(boston, chicago, 800)
# path.add_edge(boston, new_york, 350)
# path.add_edge(boston, seattle, 3000)
# path.add_edge(boston, atlanta, 1500)

# path.add_edge(chicago, new_york, 650)
# path.add_edge(chicago, seattle, 1200)
# path.add_edge(chicago, atlanta, 2200)
# path.add_edge(new_york, seattle, 2750)
# path.add_edge(new_york, atlanta, 1100)
# path.add_edge(seattle, atlanta, 3200)

# path.find_path(chicago)