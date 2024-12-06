# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  
  # Hash to store matching pairs
  pairs = { ')' => '(', '}' => '{', ']' => '[' }
  
  # Iterate through each character in the string
  s.each_char do |char|
    if pairs.values.include?(char)
      # If it's an opening bracket, push it to the stack
      stack.push(char)
    elsif pairs.keys.include?(char)
      # If it's a closing bracket, check if the stack has the matching opening bracket
      if stack.empty? || stack.pop != pairs[char]
        return false
      end
    end
  end
  
  # The stack should be empty if all brackets are matched
  stack.empty?
end

