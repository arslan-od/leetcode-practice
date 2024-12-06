# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?

  # Take the first string as the reference
  prefix = strs[0]

  # Iterate over the rest of the strings
  strs.each do |str|
    # Continuously shorten the prefix until it's a common prefix
    while str.index(prefix) != 0
      prefix = prefix[0...-1]
      return "" if prefix.empty?
    end
  end

  prefix
end
