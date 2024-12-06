def str_str1(haystack, needle)
  return 0 if needle.empty?  # Handle the case where needle is empty
  
  (0..haystack.length - needle.length).each do |i|
    return i if haystack[i, needle.length] == needle
  end
  
  -1  # If needle is not found
end

def str_str(haystack, needle)
  return 0 if needle.empty?  # Edge case: If needle is empty, return 0

  # Loop through the haystack and check substrings
  (0..haystack.length - needle.length).each do |i|
    match = true
    # Check if the substring starting from index i matches the needle
    (0...needle.length).each do |j|
      if haystack[i + j] != needle[j]
        match = false
        break
      end
    end

    # If a match is found, return the index
    return i if match
  end

  # If no match is found, return -1
  -1
end