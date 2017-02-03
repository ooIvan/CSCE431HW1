# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # self explanatory
  if arr.size == 0
    0
  else
    arr.inject(0, :+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  # self explanatory
  if arr.size == 0
    0
  elsif arr.size == 1
    arr[0]
  else
    sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # checks if empty and if zero
  # checks if any combination of x and y will sum to n
 return false if arr.empty? && n.zero?
 arr.combination(2).any? { |x, y| x + y == n }
end 

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # check empty
  # check for all letters
  # check for vowels
  # false otherwise
  return false if s.empty?
  return false if s =~ /\A[^a-z]/i
  return true if  s =~ /\A[^aeiou]/i
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
    # coverts to appropriate string and checks then 
    # checks if binary num is a mult of 4
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
  
  def initialize (isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError unless price > 0
    # checks if isbn is empty and if price is less than zero
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$" + '%.2f' % @price
    # formatting properly
  end
end
