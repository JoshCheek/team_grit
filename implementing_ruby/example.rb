def call1
  call2
end

def call2
  call3
end

def call3
  call5
end

def call5
  self
end

call5
call1
call5
