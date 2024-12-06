# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
class ListNode
    attr_accessor :val, :next
    def initialize(val = nil, _next = nil)
        @val = val
        @next = _next
    end

    def add_node(new_val)
      if val.nil?
        self.val = new_val
      else
        find_tail(self).next = ListNode.new(new_val)
      end
      self
    end

    private
    def find_tail(list)
      tail = nil
      while(list.next)
        list = list.next
      end
      return tail = list
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    num1 = get_original_number(l1)
    num2 = get_original_number(l2)
    result = num1+num2
    final_result_arr = result.to_s.reverse.split("")
    result_list = ListNode.new()
    final_result_arr.each do |x|
        result_list.add_node(x);
    end
    return result_list
end

def get_original_number(list)
    num = ''
    while(list&.val != nil)
        num = num+"#{list.val}"
        list = list.next
    end
    num&.reverse&.to_i
end
