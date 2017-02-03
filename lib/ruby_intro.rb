# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for val in 0...arr.length
    sum += arr[val]
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  big1 = arr[0]
  big2 = arr[1]
  for val in 2...arr.length
    if arr[val] > big1
      big2 = big1
      big1 = arr[val]
    elsif arr[val] > big2
      big2 = arr[val]
    end
  end
  return big1 + big2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for pos in 0...arr.length-1
    for pos2 in pos+1...arr.length
      return true if arr[pos] + arr[pos2] == n 
    end  
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.upcase!
  vowel = ['A', 'E', 'I', 'O', 'U']
  return false if vowel.include?(s[0]) || s == "" || /[^a-zA-Z]/.match(s[0])
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if /[^01+]/.match(s) || s == ""
  sum = 0
  for pos in 0...s.length
    sum += 2**pos if (s[s.length-pos-1].ord-48) != 0
  end
  return true if sum%4 == 0
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  attr_accessor :isbn, :price

  def initialize(isbn, price) 
    unless isbn.is_a?(String) 
      raise ArgumentError.new("Must be a String")
    end
    if isbn == "" 
      raise ArgumentError.new("Must be a non-empty String")
    end
    
    if !price.is_a?(Numeric) || price.to_f <= 0
      raise ArgumentError.new("Price must be a valid number value")
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$#{'%.02f' % price}"
  end

end

book = BookInStock.new("12345", 13.765)
book.price_as_string


  
