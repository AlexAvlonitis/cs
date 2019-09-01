require 'json'
require 'pry'

class BreasthFirst
  class << self
    def traverse
      tree_file = File.read('./tree_example.json')

      tree = JSON.parse(tree_file)

      queue = [tree]

      while !queue.empty?
        first_out = queue.last

        queue.unshift(*first_out['children'].reverse) if first_out['children']

        puts queue.pop['name']
      end
    end
  end
end

BreasthFirst.traverse
