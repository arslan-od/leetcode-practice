# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!  # Sort the array
  result = []
  
  # Iterate through the array
  (0...nums.length - 2).each do |i|
    # Skip duplicates for the first element
    next if i > 0 && nums[i] == nums[i - 1]
    
    # Set the two pointers
    left = i + 1
    right = nums.length - 1
    
    # Find pairs that sum to -nums[i]
    while left < right
      total = nums[i] + nums[left] + nums[right]
      
      if total == 0
        result << [nums[i], nums[left], nums[right]]  # Found a valid triplet
        
        # Skip duplicates for the second element
        left += 1 while left < right && nums[left] == nums[left + 1]
        
        # Skip duplicates for the third element
        right -= 1 while left < right && nums[right] == nums[right - 1]
        
        # Move pointers after finding a valid triplet
        left += 1
        right -= 1
      elsif total < 0
        # If the sum is less than zero, move the left pointer to the right to increase the sum
        left += 1
      else
        # If the sum is greater than zero, move the right pointer to the left to decrease the sum
        right -= 1
      end
    end
  end

  result  # Return the array of triplets
end
