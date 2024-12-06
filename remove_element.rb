# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  # Initialize the writePointer to 0
  writePointer = 0
  
  # Loop through the array with readPointer
  nums.each do |num|
    if num != val
      # If the number is not equal to val, copy it to the writePointer position
      nums[writePointer] = num
      writePointer += 1
    end
  end

  # The writePointer now indicates the number of elements not equal to val
  return writePointer
end