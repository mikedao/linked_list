class Node

  attr_accessor :next
  attr_reader :data

  def initialize(data)
    @data = data
    @next = nil
  end
end
