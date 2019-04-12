  class Stack
    def initialize
        @stack = []
    end

    def push(el)
      @stack.push(el)# adds an element to the stack
      el
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
  end

  class Queue
    def initialize
        @queue = []
    end
    
    def enqueue(el)
        @queue.unshift(el)
        el
    end

    def dequeue(el)
        @queue.shift(el)
        el
    end

    def peek
        @queue.first
    end
  end

  class Map

    def initialize
        @map = []
    end

    def set(key, value)
        if @map.none? { |pair| pair[0] == key}
            @map.push([key,value]
        else
            @map.each do |pair|  
                pair[1] = value if pair[0] == key
            end
        end
    end

    def get(key)
        @map.each { |pair| return pair[0] if pair[0] == key}
    end

    def delete(key)
        @map.each { |pair| @map.delete(pair) if pair[0] == key}
    end

    def show
        @map
    end

  end
