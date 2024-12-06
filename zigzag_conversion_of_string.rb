# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, numRows)
  return s if numRows == 1 || s.length <= numRows

  # Initialize an array for each row
  rows = Array.new(numRows) { "" }

  current_row = 0
  going_down = false

  # Iterate over each character in the string
  s.each_char do |char|
    # Append the current character to the current row
    rows[current_row] += char
    
    # Change direction when we reach the top or bottom row
    if current_row == 0 || current_row == numRows - 1
      going_down = !going_down
    end
    
    # Move to the next row
    current_row += going_down ? 1 : -1
  end

  # Combine all rows to form the final string
  rows.join
end
