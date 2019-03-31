class MergeSort
  def self.sort(array)
    return array if array.size <= 1

    mid = array.size / 2

    left = self.sort(array[0...mid])
    right = self.sort(array[mid...array.size])

    merge(left, right)
  end

  def self.merge(left, right)
    result = []

    until left.empty? || right.empty?
      sorted = left[0] <= right[0] ? left : right
      result << sorted.shift
    end

    result + left + right
  end
end

