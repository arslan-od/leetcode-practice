# @param {String} s
# @return {String}
def is_palindrome?(str)
  str == str.reverse
end

def longest_palindrome(s)
  return s if s.length <= 1

  longest = ""
  max_length = 0

  (0...s.length).each do |i|
    # Odd-length palindrome
    left = i
    right = i
    while left >= 0 && right < s.length && s[left] == s[right]
      if right - left + 1 > max_length
        max_length = right - left + 1
        longest = s[left..right]
      end
      left -= 1
      right += 1
    end

    # Even-length palindrome
    left = i
    right = i + 1
    while left >= 0 && right < s.length && s[left] == s[right]
      if right - left + 1 > max_length
        max_length = right - left + 1
        longest = s[left..right]
      end
      left -= 1
      right += 1
    end
  end

  return longest
end
