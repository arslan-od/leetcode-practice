# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    input = x.to_s
    result = ""
    input.each_char do |char|
        result = char + result
    end
    result == input
end
