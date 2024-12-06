# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  str_arr = s.split("")
  return 0 if str_arr.length == 0

  left = 0
  right = 0
  count_hash = {}
  length = 1
  str_arr.each do |char|
      count_hash[char].nil? ? count_hash[char] = 1 : count_hash[char] += 1
      
      while count_hash[char] > 1
        count_hash[str_arr[left]] -= 1 # revisit
        left += 1
      end

      length = [(right - left +1), length].max

      right += 1 
  end
  length
end

# [p,w,w,k,e,w]
# 1,3
# length = 2
# {
#     p: 1
#     w: 1
#     k: 1

# }
