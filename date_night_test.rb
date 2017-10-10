gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './binary_search_tree'


class BinarySearchTreeTest < Minitest::Test
  def test_it_can_insert_a_root_node
    tree = BinarySearchTree.new
    assert_equal [18, "movie"], tree.insert(18, "movie")
  end

  def test_it_can_retrive_node_depth
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"smartness")
    tree.insert(11,"helloness")
    tree.insert(22,"helloness")
    tree.insert(25,"helloness")
    tree.insert(23,"helloness")
    tree.insert(19,"matrix")
    tree.insert(9,"matrix")

    assert_equal 5 , tree.insert(293,"matrix")
  end

  def test_if_it_includes_node
    skip
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"Dark Knight")
    tree.insert(11,"helloness")
    tree.insert(21,"helloness")
    tree.insert(123,"helloness")
    tree.insert(24,"helloness")
    tree.insert(102,"matrix")
    tree.insert(10,"matrix")

    assert tree.include?(10)
  end

  def test_if_it_does_not_includes_node
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"Dark Knight")
    tree.insert(11,"helloness")
    tree.insert(21,"helloness")
    tree.insert(123,"helloness")
    tree.insert(24,"helloness")
    tree.insert(102,"matrix")
    tree.insert(10,"matrix")

    refute tree.include?(90)
  end

  def test_depth
    skip
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"Dark Knight")
    tree.insert(11,"helloness")
    tree.insert(21,"helloness")
    tree.insert(123,"helloness")
    tree.insert(24,"helloness")
    tree.insert(102,"matrix")
    tree.insert(10,"matrix")
    assert_equal 5 , tree.depth_of(102)

  end
  def test_smallest_node
    skip
  end
end
