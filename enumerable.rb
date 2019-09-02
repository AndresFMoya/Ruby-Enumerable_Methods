# frozen_string_literal: true

module Enumerable
  def my_each
    i = 0
    while i < self.length
      p self[i]
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
  end

  def my_select
    selection = []
    self.my_each { |item| selection.push(item) if yield(item) }
    selection
  end

  def my_all?
    self.my_each { |item| return false unless yield(item) }
    true
  end

  def my_any?
    self.my_each { |item| return true if yield(item) }
    false
  end

  def my_none?
    self.my_each { |item| return false if yield(item) }
    true
  end

  def my_count
    count = 0
    self.my_each { |item| count += 1 if yield(item) }
    count
  end

  def my_map
    result = []
    self.my_each { |item| result.push(block.call(item)) }
    result
  end

  def my_inject
    result = self[0]
    self.my_each { |i| result = yield(result, i) }
    result
  end

  def multiply_els(arr)
    arr.my_inject { |x, y| x * y }
  end
end

array = [2, 4, 5]
puts multiply_els(array)
