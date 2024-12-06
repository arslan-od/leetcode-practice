# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  left, right = 0, nums.length - 1

  while left <= right
    mid = left + (right - left) / 2

    if nums[mid] == target
      return mid  # Target found
    elsif nums[mid] < target
      left = mid + 1  # Narrow search to the right
    else
      right = mid - 1  # Narrow search to the left
    end
  end

  # If target is not found, `left` is the correct insertion position
  return left
end