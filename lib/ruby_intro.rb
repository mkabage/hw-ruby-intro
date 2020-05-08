# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.sum
end

def max_2_sum arr
    arr.sort.last(2).sum
end

def sum_to_n? arr, n
    lookup = {}
    arr.each do |element|
      complement = n - element
      if !lookup[complement].nil?
        return true
      else
        lookup[element] = complement
      end
    end
    false
end


# Part 2

def hello(name)
   "Hello, " + name
end

def starts_with_consonant? s
!!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0 
  end
  false
end

# Part 3

class BookInStock
attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
