def merge_sort(arr)
  if arr.length < 2
    arr
  else
    half_length = arr.length / 2
    half_1 = arr.slice(0..half_length - 1)
    half_2 = arr.slice(half_length..arr.length)
    merge(merge_sort(half_1),merge_sort(half_2))
  end
end

def merge(b,c,sorted_array = Array.new(b.length + c.length),b_pointer = 0, c_pointer = 0, sorted_array_pointer = 0)
  if b_pointer <= b.index(b.last) && c_pointer <= c.index(c.last)
    if b[b_pointer] < c[c_pointer]
      sorted_array[sorted_array_pointer] = b[b_pointer]
      b_pointer += 1
    else
      sorted_array[sorted_array_pointer] = c[c_pointer]
      c_pointer += 1
    end
    sorted_array_pointer += 1
    merge(b,c,sorted_array, b_pointer, c_pointer, sorted_array_pointer)
  elsif b_pointer == b.index(b.last) + 1
    sorted_array.compact!.concat(c[c_pointer..c.index(c.last)])
  elsif c_pointer == c.index(c.last) + 1
    sorted_array.compact!.concat(b[b_pointer..b.index(b.last)])
  end
end

p merge_sort([5,3,2,7,9,1,6,4,8,34,-1,22,59,100])