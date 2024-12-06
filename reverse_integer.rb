# @param {Integer} x
# @return {Integer}
def reverse(x)
    str = x.to_s
    str_arr = str.split("")
    negative_number = str_arr[0] == "-"
    reversed_arr = []
    if negative_number
        reversed_arr = str_arr[1..-1].reverse
        reversed_arr.unshift("-")
    else
        reversed_arr = str_arr.reverse
    end
    integer_val = reversed_arr.join("").to_i
    integer_val = integer_val > 2147483647 ? 0 : integer_val
    integer_val = integer_val < -2147483648 ? 0 : integer_val
    integer_val
end
