# Part 1

def sum arr
 array[0] = array.pop + array[0];
  sum(array) until array.length == 1
  array.first
end

def max_2_sum arr
 case a.length
    when 0
      return 0
    when 1
      return a.first
    else
      return (a.sort!.pop)+(a.sort!.pop)
end


# Part 2

def hello(name)
 	def hello(name)
	return "Hello, #{name}"

end


# Part 3

class BookInStock
 attr_accessor :isbn, :price
	
  def initialize(isbn, price)	
    raise ArgumentError if isbn.empty? || price <= 0	
    @isbn = isbn	
    @price = price
  	
end

