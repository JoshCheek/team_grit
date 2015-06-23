# For this kata, walk through the code in the way that Ruby does it,
# predicting the result of each line as you go.
#
# Then, at the end, run it and see that you are correct.

public # <-- just to make it so we can use call5 the way we do

def call1
  call2
end

def call2
  call3
end

def call3
  "zomg".call4
  "lol".call4
end

def call5
  self
end

class String
  def call4
    self.call5
    123.call5
  end
end

call5
call1
call5
