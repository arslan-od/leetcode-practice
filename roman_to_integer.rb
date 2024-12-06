# @param {String} s
# @return {Integer}
def roman_to_int(s)
 # Mapping Roman numerals to their corresponding decimal values
  value_map = {
    'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400,
    'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40,
    'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
  }

  total = 0
  i = 0
  
  # Iterate over the string, checking for both subtractive and regular forms
  while i < s.length
    # Check if the next two characters form a subtractive combination (e.g., IV, IX)
    if i + 1 < s.length && value_map.has_key?(s[i..i+1])
      total += value_map[s[i..i+1]]
      i += 2 # Move past the two-character Roman numeral
    else
      total += value_map[s[i]]
      i += 1 # Move to the next character
    end
  end

  total
end
