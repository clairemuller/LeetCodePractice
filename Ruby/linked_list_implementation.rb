class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end
end

# Definition for singly-linked list.
class LinkedList
    def initialize(value)
        @head = Node.new(value)
    end

    # add a node to the end of the list
    def add(value)
        node = @head
        while node.next != nil
            node = node.next
        end
        node.next = Node.new(value)
    end

    # find and delete a given value from the list
    def delete(value)
        if @head.value == value
            @head = @head.next
        else
            node = @head
            while node.next.value != value && node.next != nil
                node = node.next
            end
            node.next = node.next.next
        end
        @head
    end

    def return_list
        arr = []
        curr = @head
        while curr.next != nil
            arr << curr
            curr = curr.next
        end
        arr << curr
    end

    # easier to read just values
    def return_list_values
        arr = []
        curr = @head
        while curr.next != nil
            arr << curr.value
            curr = curr.next
        end
        arr << curr.value
    end
end
