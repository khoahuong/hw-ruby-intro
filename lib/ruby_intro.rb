#  When done, submit this entire file to the autograder.

# Part 1

def sum(array)
    sum_Array = 0
    array.each do |i|
        sum_Array += i
    end
    return sum_Array
end

def max_2_sum(array)
    if array.length==0
        return 0
    elsif array.length==1
        return array[0]
    elsif array.sort!
        return array[array.length-2]+array[array.length-1]
    end
end

def sum_to_n?(array, n)
    for i in 0..array.length-2
        for j in i+1..array.length-1
            if array[i]+array[j] == n
                return true
            end
        end
    end
    return false
end

# Part 2

def hello(name)
    return "Hello, #{name}" 
end

def starts_with_consonant?(s)
    if s.length==0
      return false
    end
    if s[0] =~ /[A-Za-z]/      
      if  s[0]=='a' || s[0]=='e' || s[0]=='i' || s[0]=='o' || s[0]=='u' || s[0]=='A' || s[0]=='E' || s[0]=='I' || s[0]=='O' || s[0]=='U'
          return false
      else
          return true
      end
    end
    return false
end

def binary_multiple_of_4?(s)
    if s[0] =~ /[0-9]/
    sum = 0
    for i in 0..s.length-1
        if s[s.length-1-i]=='1' 
            sum += 2 ** (i)
        elsif s[s.length-1-i]!='0'
            return false
        end
    end    
    if sum%4==0
        return true
    else
        return false
    end
    end
    return false
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new("Not valid number") if price <= 0
    raise ArgumentError.new("Not valid String") if isbn.empty?
    @isbn = isbn
    @price = price
  end
  
  
  def price_as_string
    return "$" + format('%.2f',price)
  end
end
