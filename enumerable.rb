# frozen_string_literal: true

module Enumerable
  def my_each
    return to_enum __method__ unless block_given?

    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_each_with_index
    return to_enum __method__ unless block_given?

    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    return to_enum __method__ unless block_given?

    selection = []
    my_each { |item| selection.push(item) if yield(item) }
    selection
  end

  def my_all?(arg = nil)
    my_each { |item| return false if yield(item) == false } if block_given?
    my_each { |item| return false if item == false } if arg.nil?

    true
  end

  def my_any?(arg = nil)
    if block_given?
      my_each { |item| return true if yield(item) }
    elsif arg.nil?
      my_each { |item| return true if item }
    else
      my_each { |item| return true if item.class == arg }
    end
    false
  end

  def my_none?(&block)
    result = true
    if block
      my_each { |e| result = false if yield(e) }
    else
      my_each { |e| result = false if e }
    end
    result
  end

  def my_count
    count = 0

    if block_given?
      my_each { |item| count += 1 if yield(item) }
    else
      my_each { count += 1 }
    end
    count
  end

  def my_map(proc = nil)
    return to_enum __method__ unless block_given?

    result = []
    if proc
      my_each { |item| result << proc.call(item) }
    else
      my_each { |item| result << yield(item) }
    end
    result
  end

  def my_inject
    result = self[0]
    self[1..-1].my_each { |item| result = yield(result, item) }
    result
  end
end

def multiply_els(arr)
  arr.my_inject { |x, y| x * y }
end

puts multiply_els([2, 4, 5])
