require_relative './tree'

tree = BST::Tree.new(BST::Node.new(45))
tree.insert(25)
tree.insert(82)
tree.insert(12)
tree.insert(28)
tree.insert(17)

tree.search(17)