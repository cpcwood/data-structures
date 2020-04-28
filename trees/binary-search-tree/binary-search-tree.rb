# Binary Search Tree
# Written in Ruby

class Node
  attr_accessor :key, :left, :right

  def initalize(key = nil)
    @key = key
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  attr_accessor :root_node

  def initalize(node_class, root_key = nil)
    @node_class = node_class
    @root_node = @node_class.new(root_key)
  end

  def insert(node, key)
    if node.key == key
      node
    else if key < node.key
      insert(node.left, key)
    else if key > node.key
      insert(node.right, key) 
    else
      node = @node_class(key)
    end
  end
end


