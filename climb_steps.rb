# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  # Base cases
  return 1 if n == 1
  return 2 if n == 2

  # Initialize the first two steps
  first = 1
  second = 2

  # Iterate from 3 to n
  (3..n).each do
    current = first + second
    first = second
    second = current
  end

  second
end