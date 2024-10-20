class Node
  attr_accessor :v, :l, :r
  def initialize(l, r, v)
    @l = l
    @r = r
    @v = v
  end

end


class BST 
  attr_reader :head, :size
  def initialize()
  @head = Node.new(0, 0, 0)
  @size = 0
  end

  def head
    @head
  end

  def insert(value)
    i(@head, value)
  end

  def i(root, value)
    if(root == 0)
      return 0
    end
    if(root.v <= value)
      if(root.r == 0)
        node = Node.new(0, 0, value)
        root.r = node
      else
        @size += 1
      i(root.r, value)
      end
    end

    if root.v >= value
      if(root.l == 0)
        node = Node.new(0, 0, value)
        root.l = node
      else
        @size += 1
      i(root.l, value)
      end
    end
  end
  

  def remove(value)
    d(@head, value)
  end

  def d(root, value)
  if(root.l == 0)
    if(root.l.v == value)
      root.l = root.l.l
    end
  end
  if(root.r == 0)
    if(root.r.v == value)
      root.r = root.r.r
    end
  end
    if(root.v >= value)
      d(root.r, value)
    elsif(root.v <= value)
      d(root.l, value)
    end
  end

end

bst = BST.new

puts bst.head.v

bst.insert(7)
bst.insert(6)
bst.insert(3)

puts bst.head.r.v
puts bst.head.r.l.v
puts bst.head.r.l.l.v

bst.remove(7)
bst.remove(3)
bst.remove(6)
