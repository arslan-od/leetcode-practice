# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!  # Sort the array to use two-pointer technique
    closest_sum = nil  # Variable to store the closest sum
    min_diff = Float::INFINITY  # Initialize minimum difference as infinity
    
    # Iterate through the array
    (0...(nums.length - 2)).each do |i|
      # Skip the same element to avoid duplicates
      next if i > 0 && nums[i] == nums[i - 1]
      
      # Set the two pointers
      left = i + 1
      right = nums.length - 1
      
      while left < right
        total = nums[i] + nums[left] + nums[right]
        
        # Update closest sum if a closer sum is found
        diff = (total - target).abs
        if diff < min_diff
          closest_sum = total
          min_diff = diff
        end
  
        # Adjust the pointers based on the total sum
        if total < target
          left += 1  # Increase the sum by moving the left pointer
        elsif total > target
          right -= 1  # Decrease the sum by moving the right pointer
        else
          return total  # Return the sum if it matches the target
        end
      end
    end
  
    closest_sum  # Return the closest sum found
  end