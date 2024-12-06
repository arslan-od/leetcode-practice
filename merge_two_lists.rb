# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  # Create a dummy node to simplify the merging process
  dummy = ListNode.new
  current = dummy

  # Traverse both lists and merge them
  while list1 && list2
    if list1.val < list2.val
      current.next = list1
      list1 = list1.next
    else
      current.next = list2
      list2 = list2.next
    end
    current = current.next
  end

  # If any of the lists is not empty, append it to the result
  if list1
    current.next = list1
  elsif list2
    current.next = list2
  end

  # Return the merged list (dummy.next is the head of the list)
  dummy.next
end