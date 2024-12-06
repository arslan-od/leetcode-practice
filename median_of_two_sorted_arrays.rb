# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    combined_arr = (nums1 + nums2).sort
    length = combined_arr.length
    if combined_arr.length%2 == 0
        average(combined_arr[length/2], combined_arr[(length/2)-1])
    else
        combined_arr[(length/2.to_f).ceil-1]
    end
end

def average(val_1, val_2)
    (val_1 + val_2)/2.to_f
end
