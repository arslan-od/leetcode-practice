# @param {Integer} num
# @return {String}
def int_to_roman(num)
      # Mapping decimal values to their corresponding Roman numeral equivalents
  value_map = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
    100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
  }

  result = ""
  
  # Iterate over the value map and subtract the value from the number
  # while appending the corresponding Roman numeral to the result
  value_map.each do |value, symbol|
    while num >= value
      result << symbol
      num -= value
    end
  end

  result

end
