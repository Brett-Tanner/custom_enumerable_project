module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in 0...self.length do
      yield(self[i], i)
    end
    return self
  end

  def my_select
    filtered_array = Array.new
    for i in 0...self.length do
      if yield(self[i]) == true
        filtered_array << self[i]
      end
    end
    filtered_array
  end

  def my_all?
    for i in 0...self.length do
      if yield(self[i]) == false
        return false
      end
    end
    true
  end

  def my_any?
    for i in 0...self.length do
      if yield(self[i]) == true
        return true
      end
    end
    false
  end

  def my_none?
    for i in 0...self.length do
      if yield(self[i]) == true
        return false
      end
    end
    true
  end

  def my_count
    if block_given?
      total = 0
      for i in 0...self.length do
        if yield(self[i]) == true
          total += 1
        end
      end
      total
    else
      return self.length
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in 0...self.length do
      yield(self[i])
    end
    return self
  end
end
