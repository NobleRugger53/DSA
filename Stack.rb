class Stack
    
    def initialize()
        @values = []
        @size = 0
    end

    def push(value)
        @values.push(value)
        @size += 1
    end

    def peek()
        return @values[@size - 1]
    end

    def pop()
        @size -= 1
        @temp = @values[@size - 1]
        return @temp
    end

    def size()
        return @size
    end

end

myStack = Stack.new()

myStack.push(4)

myStack.push(5)

puts myStack.size

puts myStack.pop().to_s