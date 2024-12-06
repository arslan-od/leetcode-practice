# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
    left = 0
    right = 9
    result = {}

    while right <= s.length && left <= right
        sequence = s[left..right]
        result[sequence] ||= 0
        result[sequence] += 1
        left += 1
        right += 1
    end
    result.select {|seq,count| count>1}.keys
end
