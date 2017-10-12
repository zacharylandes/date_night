gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'
require 'pry'
# require 'movies'


class NodeTest < Minitest::Test
  def test_it_has_a_value
    node = Node.new(12, "This movie")
    assert_equal 12, node.value
  end
end
