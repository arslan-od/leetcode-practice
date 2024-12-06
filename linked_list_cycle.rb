# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  # Initialize slow and fast pointers
  slow = head
  fast = head
  
  # Traverse the linked list
  while fast && fast.next
    slow = slow.next         # Move slow pointer by 1 step
    fast = fast.next.next    # Move fast pointer by 2 steps
    
    # If slow and fast meet, a cycle exists
    return true if slow == fast
  end
  
  # If the loop ends, there's no cycle
  false
end

