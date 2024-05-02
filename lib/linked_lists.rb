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

p linked_list
