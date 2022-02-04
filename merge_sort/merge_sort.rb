def merge_sort(arr)
  return arr if arr.length < 2
  p half_length = arr.length / 2
  p half_1 = arr.slice(0..half_length - 1)
  p half_2 = arr.slice(half_length..arr.length)
  merge_sort(half_1)
  merge_sort(half_2)
end

merge_sort([5,3,2,7,9,1,6,4,8])