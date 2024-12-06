# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  # Start from the last digit
  i = digits.length - 1

  while i >= 0
    # Add 1 to the current digit
    digits[i] += 1

    # If the digit becomes 10, set it to 0 and carry over the 1 to the next digit
    if digits[i] == 10
      digits[i] = 0
      i -= 1
    else
      # No carry, we're done
      return digits
    end
  end

  # If we have gone through all digits and still have a carry, we need to add a new leading digit
  [1] + digits
end
