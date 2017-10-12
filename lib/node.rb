require_relative 'binary_search_tree'

class Node
  attr_accessor :value, :movie_name, :left, :right, :depth
  def initialize(value, movie_name, depth = 1)
    @left = nil
    @right = nil
    @depth = depth
    @value = value
    @movie_name = movie_name
  end
end
