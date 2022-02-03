def fibs(n)
  arr = []
  i = 0
  until i == n
    if i == 0
      arr.push(0)
      i += 1
    elsif i == 1
      arr.push(1)
       i += 1 
    else
      arr.push(arr[i - 1] + arr[i - 2])
      i += 1
    end
  end
  arr
end

p fibs(8)