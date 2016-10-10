class LinkedList

  attr_reader :head

  def initialize(data)
    @head = Node.new(data)
  end

  def push(data)
    tail.next = Node.new(data)
  end

  def tail
    current = @head

    until current.next.nil?
      current = current.next
    end

    return current
  end

  def almost_tail
    current = @head

    until current.next.next.nil?
      current = current.next
    end
    return current
  end

  def recursive_almost_tail(current = @head)
    if current.next.next.nil?
      return current
    else
      recursive_almost_tail(current.next)
    end
  end

  def recursive_tail(current = @head)
    if current.next.nil?
      return current
    else
      recursive_tail(current.next)
    end
  end

  def pop
    temp = almost_tail.next
    almost_tail.next = nil
    return temp.data
  end

  def count
    counter = 1
    current = @head
    while current.next
      current = current.next
      counter += 1
    end
    return counter
  end

end
