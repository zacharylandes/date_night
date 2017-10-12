require_relative 'node'
# require 'movies'
require 'pry'

class BinarySearchTree

def initialize
  @root = nil
  @sorted_movies = []
  @movies = {}
  @lines = []
  @node_count = 1
end

def insert(new_node_value, movie_name, current_node = @root, depth = 1)
   if @root.nil?
      create_root(new_node_value, movie_name)
    else
      create_node(new_node_value, movie_name, current_node = @root, depth = 1)
  end
end


def create_root(new_node_value, movie_name)
      @root = Node.new(new_node_value, movie_name)
      return 1
end


def create_node(new_node_value, movie_name, current_node = @root, depth = 1)
  if new_node_value < current_node.value
     if current_node.left.nil?
        current_node.left = Node.new(new_node_value, movie_name, depth +=1)
        depth
     else create_node(new_node_value, movie_name, current_node.left, depth+=1)
     end
  else
     if current_node.right.nil?
        current_node.right = Node.new(new_node_value, movie_name, depth+=1)
        depth
     else create_node(new_node_value, movie_name, current_node.right, depth +=1)
     end
   end
end

def include?(node_value, current_node = @root)
    if node_value == current_node.value
        true
    elsif node_value < current_node.value && !current_node.left.nil?
      include?(node_value, current_node.left)
    elsif node_value > current_node.value && !current_node.right.nil?
      include?(node_value, current_node.right)
    else return  false
    end
end

def depth_of(node_value, current_node = @root)
    if node_value == current_node.value
      current_node.depth
    elsif node_value < current_node.value && !current_node.left.nil?
      depth_of(node_value, current_node.left)
    elsif node_value > current_node.value && !current_node.right.nil?
      depth_of(node_value, current_node.right)
    else return "I can't find that number"
    end
end

def max(current_node = @root)
  max = {}
  if !current_node.right.nil? && current_node.right.value > current_node.value
    max(current_node.right)
  else
     max[current_node.movie_name] = current_node.value
     max   # map x(node.right)
  end
end

def min(current_node = @root)
  min = {}
  if !current_node.left.nil? && current_node.left.value < current_node.value
    min(current_node.left)
  else
  min[current_node.movie_name] = current_node.value
     min
  end
end

def sort_left_nodes(current_node) #this creates some abstraction for the sort method
  @sorted_movies.push << {current_node.value => current_node.movie_name}
   sort(current_node.left)
  if !current_node.right.nil?
      sort(current_node.right)
  end
end

  def sort (current_node = @root)
    if current_node.left.nil?
      @sorted_movies << {current_node.value => current_node.movie_name}
       if !current_node.right.nil?
          sort(current_node.right)
       end
    else sort_left_nodes(current_node)
    end
    @sorted_movies.sort_by { |hash| hash.keys }
   end

 def load (data)
   file = File.open(data, "r")
    while (@line = file.gets)
       @title = @line.split(',').pop.chomp
       @score =  @line.split(',').shift.to_i
       @movies[@score]= @title
       insert(@score, @title)
    end
     @movies.keys.count
 end
#  def health(node_value, current_node = @root)
#    if node_value < current_node.value
#       if current_node.left.nil?
#          @node_count +=1
#       else @node+=1
#         health(new_node_value, current_node.left)
#       end
#    else
#      health(new_node_value, current_node.right)
#       end
#     end
#
# end
#
#  end

end
