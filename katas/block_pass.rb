def m(&b)
  b.call(100)  # => 101
end            # => :m

m do |n|
  n       # => 100, 50
  n + 1   # => 101, 51
end       # => 51


# 1. I define the method m
# 5. I call the method m with the block
# 1. I enter the method m
#    and assign the local variable "b"
#    to the block that was passed from 5
# 2. I look up the local variable "b" to get the block from 5
# 3. I call the block with "100"
# 5 (block). I enter the block, n is "100"
# 6. I look up "n" to get "100"
# 7. I look up "n" to get "100" and add "1" to get "101"
# 8. I return the last result ("101") to 2
# 2. The block invocation has returned "101", so this line evaluates to "101"
# 3. I return the last result ("101") to 5
# 5. The method invocation has returned "101"
