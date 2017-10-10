

  # def include?(new_node)
  #    if @include.include?(new_node)
  #       true
  #    else
  #      false
  #    end
  # end



tree = BinarySearchTree.new
tree.insert(18, "matrix")
tree.insert(13,"dumbness")
tree.insert(4,"Dark Knight")
tree.insert(11,"helloness")
tree.insert(21,"helloness")
tree.insert(123,"helloness")
tree.insert(24,"helloness")
tree.insert(102,"matrix")
tree.depth_of(102)
# tree.find(12, "hello")

  # def in_order(node=@root, &block)
  #   return if node.nil?
  #   in_order(node.left, &block)
  #   yield node
  #   in_order(node.right, &block)
  # end
  #
  #
  # def pre_order(node=@root, &block)
  #   return if node.nil?
  #   yield node
  #   in_order(node.left, &block)
  #   in_order(node.right, &block)
  # end
  #
  #
  # def post_order(node=@root, &block)
  #   return if node.nil?
  #   in_order(node.left, &block)
  #   in_order(node.right, &block)
  #   yield node
  # end
  #
  # def search( new_node, node=@root )
  #   return nil if node.nil?
  #   if key < node.key
  #     search( key, node.left )
  #   elsif key > node.key
  #     search( key, node.right )
  #   else
  #     return node
  #   end
  # end
  #
  # def check_height(node)
  #   return 0 if node.nil?
  #
  #   leftHeight = check_height(node.left)
  #   return -1 if leftHeight == -1
  #
  #   rightHeight = check_height(node.right)
  #   return -1 if rightHeight == -1
  #
  #   diff = leftHeight - rightHeight
  #   if diff.abs > 1
  #     -1
  #   else
  #     [leftHeight, rightHeight].max + 1
  #   end
  # end
  #
  # def is_balanced?(node=@root)
  #   check_height(node) == -1 ? false : true
  # end


# class Startu
 # def initialize
 #   @movies= {}
 #   @depth = 0
 #   @tree = BinaryTree.new
 # end
 # def run (score, movie_name)

# tree.insert(13, "this movies")
# tree.insert(113, "that movies")


# @movies[score] =  name
# p @movies
# end
# end
# startup = Startup.new
# startup.run(13, "saldkj")
# tree.insert(30)
# tree.insert(4)
# # puts tree.inspect
# puts "tree.is_balanced?"
# puts tree.is_balanced?
#
# puts "pre_order"
# tree.pre_order do |node|
#   puts node.key
# end
#
# puts "in_order"
# tree.in_order do |node|
#   puts node.key
# end
#
# puts "post_order"
# tree.post_order do |node|
#   puts node.key
# end
# class BinaryTree
#   def add(value)
#     if @root.nil?
#       @root = BinaryTreeNode.new(value)
#       return @root
#     else
#       @root.add(value)
#     end
#   end
# end
#
# class BinaryTreeNode
#   def initialize(value)
#     @value = value
#     @depth = 0
#   end
#   def add(value)
#     if value < @value
#       if @left.nil?
#         @left = BinaryTreeNode.new(value)
#         @depth +=1
#         puts "#{@value}  is #{@depth}"
#         return
#       else
#         @depth+=1
#         @left.add(value)
#       end
#     else
#       if @right.nil?
#         @right = BinaryTreeNode.new(value)
#         @depth += 1
#         puts "#{@value} is #{@depth}"
#         return
#       else
#         @depth+=1
#         @right.add(value)
#       end
#     end
#   end
# end
# def startup
# tree =BinaryTree.new
# tree.add(18)
# node = BinaryTreeNode.new(18)
# node.add(12)
# node.add(25)
# node.add(30)
# node.add(4)
# end
# startup
# # def setup
# #   n = Node.new(10)
# #   o = Node.new(1)
# #
# #   tree = Tree.new(23)
# #   tree.insert(n.value)
# #   tree.insert(o.value)
# #
# #
# # end
# # class Node
# #  attr_accessor :value, :left, :right
# #     def initialize (value)
# #       @value = value
# #       @left = left
# #       @right = right
# #     end
# # end
# # class Tree
# #  attr_accessor :root, :left, :right
# #     def initialize (root = nil)
# #       @root = root
# #       @left = nil
# #       @right = nil
# #     end
# #
# #     def insert (node)
# #      if @left == node || @right == node
# #        return
# #      end
# #       if @root == nil
# #          @root = node
# #       else
# #        if  node < @root
# #          if  @left == nil
# #              @left = node
# #              p "#{@left} "
# #           return
# #           else
# #             if node <
# #
# #              insert(@left)
# #             end
# #         end
# #       end
# #           if node > @root
# #            if @right == nil
# #               @right = node
# #               puts node + "I'm 2nd #{@right}"
# #
# #              return
# #           else
# #             @right = node
# #             puts node + "I'm more #{@right}"
# #
# #             insert(@right)
# #
# #           end
# #         end
# #       end
# #       end
# # end
# # setup
# # # tree = Tree.new(29)
# # # # tree.addNode(n)
# # # puts node.value
