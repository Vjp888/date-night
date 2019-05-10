require './lib/node'
require 'pry'
class BinarySearchTree
  def initialize
    @base = nil
  end

  def insert(value, title)
    unless @base
      @base = Node.new(value, title)
      depth_of_tree
    else
      node = Node.new(value, title)
      @base.find_leaf(node)
      depth_of_tree
    end
  end

  def depth_of_tree
    counter = 0
    node = @base
    loop do
      if node.left_node != nil
        node = node.left_node
        counter += 1
      else
        break
      end
    end
    counter
  end

  def include?(value)
    if @base.find_node(value)
      true
    else
      false
    end
  end
end
