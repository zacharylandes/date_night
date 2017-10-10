gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './binary_search_tree'


class BinarySearchTreeTest < Minitest::Test
  def test_it_can_insert_a_root_node
    tree = BinarySearchTree.new
    assert_equal 1, tree.insert(18, "movie")
  end

  def test_it_can_insert_and_return_node_depth
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")

    assert_equal 2, tree.insert(19,"matrix")
  end
  def test_it_can_insert_and_return_more_node_depths

    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"smartness")
    tree.insert(22, "matrix")
    tree.insert(33,"dumbness")
    tree.insert(5,"smartness")
    tree.insert(42, "matrix")
    tree.insert(53,"dumbness")
    tree.insert(3,"smartness")
    tree.insert(10,"matrix")

    assert_equal 4, tree.insert(30,"matrix")

  end


  def test_if_it_includes_node

    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(10,"matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"Dark Knight")
    tree.insert(11,"helloness")
    tree.insert(21,"helloness")
    tree.insert(123,"helloness")
    tree.insert(24,"helloness")
    tree.insert(102,"matrix")
    tree.insert(10,"matrix")
    assert tree.include?(102)
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
    refute tree.include?(12)
  end

  def test_it_can_find_the_depth

    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(4,"smartness")
    tree.insert(22, "matrix")
    tree.insert(33,"dumbness")
    tree.insert(5,"smartness")
    tree.insert(42, "matrix")
    tree.insert(53,"dumbness")
    tree.insert(3,"smartness")
    tree.insert(10,"matrix")

    assert_equal 3, tree.depth_of(33)
    assert_equal 4, tree.depth_of(42)
    assert_equal 4, tree.depth_of(3)
    assert_equal 5, tree.depth_of(10)
  end

  def test_it_can_return_the_max
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(105,"matrix")
    tree.insert(111,"matrix")
    tree.insert(202,"matrix")
    tree.insert(20,"matrix")

    assert_equal ({"matrix" => 202}), tree.max
    refute_equal ({"matrix" => 22}), tree.max
    refute_equal ({"matrix" => 1}), tree.max

  end
  def test_it_can_return_the_min
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(105,"matrix")
    tree.insert(111,"matrix")
    tree.insert(202,"matrix")
    tree.insert(20,"matrix")

    assert_equal ({"dumbness" => 13}), tree.min
    refute_equal ({"matrix" => 22}), tree.min
    refute_equal ({"matrix" => 1}), tree.min

  end
  def test_it_can_sort
    
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")
    tree.insert(105,"matrix")
    tree.insert(111,"matrix")
    tree.insert(202,"matrix")
    tree.insert(20,"matrix")

    assert_equal ({"dumbness" => 13}), tree.sort


  end
end
