# frozen_string_literal: true

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
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
linked_list.append(Node.new(1))
linked_list.append(Node.new(2))
linked_list.append(Node.new(3))
linked_list.prepend(Node.new(0))

p linked_list