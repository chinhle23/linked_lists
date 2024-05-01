# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
    @size += 1
  end

  def prepend(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    @size += 1
  end
end

class Node
  attr_accessor :value, :next_node, :count

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

linked_list = LinkedList.new
linked_list.append(Node.new(1))
linked_list.append(Node.new(2))
linked_list.append(Node.new(3))
linked_list.prepend(Node.new(0))

p linked_list
p linked_list.head
p linked_list.tail
p linked_list.size