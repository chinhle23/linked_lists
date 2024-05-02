# frozen_string_literal: true

class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value)

    if @head.nil?
      @head = node
    else
      current_node = @head

      until current_node.next_node.nil?
        current_node = current_node.next_node
      end

      current_node.next_node = node
    end
  end

  def prepend(value)
    node = Node.new(value)

    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    if @head.nil?
      return 0
    else
      count = 1
      current_node = @head

      until current_node.next_node.nil?
        current_node = current_node.next_node
        count += 1
      end

      return count
    end
  end

  def tail
    return nil if @head.nil?

    current_node = @head

    until current_node.next_node.nil?
      current_node = current_node.next_node
    end

    return current_node
  end

  def at(index)
    return nil if @head.nil?

    current_node = @head
    index.times { current_node = current_node.next_node }

    return current_node
  end

  def pop
    return nil if @head.nil?

    tail = self.tail
    current_node = @head
    (self.size - 2).times { current_node = current_node.next_node }
    current_node.next_node = nil

    return tail
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

linked_list = LinkedList.new
linked_list.append(0)
linked_list.append(1)
linked_list.append(2)
linked_list.append(3)
linked_list.prepend(-1)

popped_node = linked_list.pop

p popped_node
p linked_list
p linked_list.size
