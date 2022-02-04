require 'pry-byebug'
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

def fibs_rec(n)
  if n == 1
    0
  elsif n == 2
    1
  else
    fibs_rec(n - 1) + fibs_rec(n - 2)
  end
end

def build_fib_array(n)
  arr = (1..n).to_a
  arr.map { |element| fibs_rec(element) }
end

p fibs(9)
p build_fib_array(9)
