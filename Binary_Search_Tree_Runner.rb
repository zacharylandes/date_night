require_relative 'binary_search_tree'

tree = BinarySearchTree.new
tree.insert(18, "matrix")
# tree.insert(13,"dumbness")
tree.insert(4,"Dark Knight")
tree.insert(1,"helloness")
tree.insert(21,"helloness")
tree.insert(123,"helloness")
tree.insert(24,"helloness")
tree.insert(102,"matrix")

tree.include?(2)
