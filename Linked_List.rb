

class Linked_List

    def initialize(head)
        @head=Node.new(head)
    end

    def find_end(curr_node)
        if curr_node.next_node==nil
            return curr_node
        else
            curr_node=curr_node.next_node
           return find_end(curr_node)
        end
    end

    def append(value)
        tail=find_end(head)
        new_node=Node.new(value)
        tail.assign_next(new_node)
        
    end

    def tail
        return find_end(@head)
    end

    def at(index)
        num_node=0
        curr_node=@head
        until num_node==index
            curr_node=curr_node.next_node
            num_node+=1
        end

        return curr_node
    end

    def pop
        second_to_last=at(size-1)
        second_to_last.next_link=nil
    end

    def head
        return @head
    end
    
    def prepend(value)
        new_node=Node.new(value,@head)
        @head=new_node
    end

    def size
        num_nodes=1
        curr_node=@head
        while curr_node!= nil
            curr_node=curr_node.next_node
            num_nodes+=1
        end
        return num_nodes

    end

    def contains?(value)
        
        curr_node=@head
        
        while curr_node != nil
            if curr_node.value == value
                return true
            end
                curr_node=curr_node.next_node
            
        end
        return false
    end

    def find(value)
        curr_node=@head
        ind=0
        while curr_node != nil
            
            if curr_node.value == value
                return ind
            end
                ind+=1
                curr_node=curr_node.next_node

            
        end
        return false
    end

    def to_s
        curr_node=@head
        ret=""
        while curr_node !=nil
            ret=ret+curr_node.value.to_s+" "
            curr_node=curr_node.next_node
        end
        
        return ret
    end
end

class Node

    def initialize(val,next_link=nil)
        @val=val
        @next_link=next_link

    end

    def value
        return @val
    end
    
    def next_node
        return @next_link
    end

    def assign_next(new_next)
        @next_link=new_next
    end

end

my_list=Linked_List.new("FUCK")
my_list.append("Shit")
my_list.append("BITCH")


puts my_list