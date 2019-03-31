require_relative './node'

module BST
  class Tree
    attr_reader :root_node

    def initialize(root_node = nil)
      @root_node = root_node
    end

    def insert(value)
      @root_node.nil? ? @root_node = BST::Node.new(value) : @root_node.insert(value)
    end

    def search(value, node = @root_node, index = 0)
      return nil if node.nil?

      return search(value, node.left, index += 1) if value < node.value
      return search(value, node.right, index += 1) if value > node.value

      puts "Value: #{node.value} found in node: #{node}"
      puts "It took: #{index} tries"
    end

    def examine
      puts @root_node
      puts @root_node.left.inspect
      puts @root_node.right.inspect
    end
  end
end
