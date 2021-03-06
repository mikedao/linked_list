require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list.rb"

class LinkedListTest < MiniTest::Test



  def test_a_linked_list_can_be_created_with_a_node
    list = LinkedList.new("pizza")

    assert list
    assert list.is_a?(LinkedList)
  end

  def test_a_linked_list_holds_data
    list = LinkedList.new("pizza")

    assert list.head.is_a?(Node)
    assert_equal "pizza", list.head.data
  end

  def test_you_can_push_a_node
    list = LinkedList.new("pizza")

    list.push("gravy")

    assert_equal "gravy", list.head.next.data
  end

  def test_you_can_push_multiple_nodes
    list = LinkedList.new("pizza")

    list.push("gravy")
    list.push("cheese")

    assert_equal "pizza", list.head.data
    assert_equal "gravy", list.head.next.data
    assert_equal "cheese", list.head.next.next.data
  end

  def test_tail_returns_last_node
    list = LinkedList.new("pizza")

    list.push("gravy")
    list.push("cheese")

    assert_equal "cheese", list.tail.data
  end

  def test_recursive_tail_returns_last_node
    list = LinkedList.new("pizza")

    list.push("gravy")
    list.push("cheese")

    assert_equal "cheese", list.recursive_tail.data
  end

  def test_almost_tail_gives_us_next_to_last
    list = LinkedList.new("pizza")
    list.push("gravy")
    list.push("cheese")

    assert_equal "gravy", list.almost_tail.data
  end

  def test_recursive_almost_tail_gives_us_next_to_last
    list = LinkedList.new("pizza")
    list.push("gravy")
    list.push("cheese")

    assert_equal "gravy", list.recursive_almost_tail.data
  end


  def test_pop_removes_last_node
    list = LinkedList.new("pizza")
    list.push("gravy")
    list.push("cheese")

    result = list.pop

    assert_equal "cheese", result
    assert_equal "gravy", list.tail.data
  end

  def test_it_can_count_number_of_nodes
    list = LinkedList.new("pizza")

    assert_equal 1, list.count

    list.push("gravy")
    list.push("cheese")

    assert_equal 3, list.count

    list.pop

    assert_equal 2, list.count
  end
end
