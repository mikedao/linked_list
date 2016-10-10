require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < MiniTest::Test

  def test_node_has_data
    node = Node.new("thing")

    assert_equal "thing", node.data
  end

  def test_node_has_no_next_by_default
    node = Node.new("thing")

    refute node.next
  end
end