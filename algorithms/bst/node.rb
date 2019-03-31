module BST
  class Node
    attr_reader :right, :left, :value

    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end

    def insert(new_value)
      if new_value <= @value
        @left.nil? ? @left = Node.new(new_value) : @left.insert(new_value)
      elsif new_value > @value
        @right.nil? ? @right = Node.new(new_value) : @right.insert(new_value)
      end
    end
  end
end