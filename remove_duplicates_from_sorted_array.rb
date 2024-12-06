def remove_duplicates(nums)
  return 0 if nums.empty?

  i = 1  # Pointer for the next unique element position
  
  # Start from the second element and check for duplicates
  (1...nums.length).each do |j|
    if nums[j] != nums[j - 1]
      nums[i] = nums[j]
      i += 1
    end
  end
  
  # The first `i` elements are the unique ones
  return i
end
