
# Exercise 1 - Stack LIFO
class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end

end

# Exercise 2 - Queue FIFO
class Queue
  def initialize
    @queue = []
    # create ivar to store stack here!
  end

  def enqueue(el)
    @queue << (el)
    # adds an element to the stack
  end

  def dequeue
    @queue.shift
    # removes one element from the stack
  end

  def show
    @queue.dup
    # return a copy of the stack
  end

end

#Exercise 3 - Map

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def remove(key)
    @map.reject! {|pair| pair[0] == key}
    nil
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
