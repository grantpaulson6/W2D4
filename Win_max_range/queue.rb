

class MyQueue

  def initialize
    @queue = 
  end

  def peek
    @queue[0]
  end

  def size
    @queue.length
  end

  def empty?
    @queue.emtpy?
  end

  def enqueue(num)
    @queue << num
  end

  def dequeue(num)
    @queue.shift
  end

end

class MyStack

  def initialize
    @stack = []
  end


  def peek
    @stack[-1]
  end

  def size
    @stack.length
  end

  def empty?
    @stack.emtpy?
  end

  def push(num)
    @stack << num
  end

  def pop(num)
    @stack.pop
  end

end