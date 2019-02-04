# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum=0
  if arr.length==0
    sum=0
  elsif arr.length==1
    sum=arr[0]
  else
    arr1=arr.sort
    sum=arr1[-1]+arr1[-2]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  len=arr.length
  if(len==0&&n==0)
    return false
  end
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0
    return false
  elsif s=~/^[^a-zA-Z](.*)/
    return false
  elsif s =~ /^[aeiouAEIOU](.*)/
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=="0"
    return true
  elsif s=~/^[10]*00$/
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price
def initialize(isbn, price)
  raise ArgumentError if isbn.empty? || price <= 0
  @isbn=isbn
  @price=price
end
def price_as_string
  format("$%.2f",@price)
end
end
