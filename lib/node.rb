class Node
  attr_reader :value, :title, :left_node, :right_node
  def initialize(value, title)
    @title = title
    @value = value
    @left_node = nil
    @right_node = nil
  end

  def find_leaf(node)
    unless @left_node && @right_node
      if @left_node
        @right_node = node
      else
        @left_node = node
      end
    else
      @left_node.find_leaf(node)
    end
  end

  def find_node(value) #work in progress for includes method attempting to have a casacading search from left to right
    if @value == value
      true
    end
    node = left_node
    loop do
      if node.find_node(value) == false
        node = @left_node
      elsif
      end
    end
  end
end
