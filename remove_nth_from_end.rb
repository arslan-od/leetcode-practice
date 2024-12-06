# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  # Create a dummy node that points to the head of the list
  dummy = ListNode.new(0)
  dummy.next = head
  fast = slow = dummy
  
  # Move the fast pointer n steps ahead
  n.times { fast = fast.next }
  
  # Move both fast and slow pointers until fast reaches the end
  while fast.next
    fast = fast.next
    slow = slow.next
  end
  
  # Remove the nth node from the end
  slow.next = slow.next.next
  
  # Return the modified list (dummy.next points to the new head)
  dummy.next
end
