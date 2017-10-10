require_relative 'node'


class BinarySearchTree

def initialize
  @root = nil
  @sort = []
end

def insert(new_node_value, movie_name, node = @root, depth = 1)
    if @root.nil?
       @root = Node.new(new_node_value, movie_name)
       return depth
    elsif new_node_value < node.value
          if node.left.nil?
             node.left = Node.new(new_node_value, movie_name, depth +=1)
             depth
          else
             insert(new_node_value, movie_name, node.left, depth+=1)
          end
    elsif new_node_value > node.value
          if node.right.nil?
             node.right = Node.new(new_node_value, movie_name, depth+=1)
              depth
          else
             insert(new_node_value, movie_name, node.right, depth +=1)
          end
    end

end
def include?(node_value, node = @root)
        if node_value == node.value
          true
        elsif node_value < node.value && !node.left.nil?
          include?(node_value, node.left)
        elsif node_value > node.value && !node.right.nil?
          include?(node_value, node.right)
        else
          false
        end
end
def depth_of(node_value, node = @root)
    if node_value == node.value
      node.depth
    elsif node_value < node.value && !node.left.nil?
      depth_of(node_value, node.left)
    elsif node_value > node.value && !node.right.nil?
      depth_of(node_value, node.right)
    else
      p "I can't find that number"
    end
end
def max(node = @root)
    max = {}
    if !node.right.nil? && node.right.value > node.value
      max(node.right)
    else
       max[node.movie_name] = node.value
       max   # map x(node.right)
    end
end
def min(node = @root)
    min = {}
    if !node.left.nil? && node.left.value < node.value
      min(node.left)
    else
    min[node.movie_name] = node.value
       min  # map x(node.right)
    end
end
def sort (node = @root)
  @sort << {node.value => node.movie_name}
  if !node.left.nil? || !node.right.nil?
    sort(node.left)
    sort(node.right)
  else
    return
    # !node.right.nil? && node.right.value > node.value
    #  sort << node.right.value
    #  sort(node.right)# map x(node.right)
  end
 p sort
end
end
