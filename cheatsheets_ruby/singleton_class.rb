# If these are both instances of Object, then why do they inspect differently?
self.class    # => Object
self.inspect  # => "main"

Object.new.class    # => Object
Object.new.inspect  # => "#<Object:0x007f993310c8a8>"



# Main must be getting a special inspect method. But we know how method lookup works,
# two instances of the same class will go through the same lookup, and find the same method.
# ...so there must be some special hidden class.
# Since I can still call all the other methods, the normal lookup must still work.
# We could acheive this if we pointed main's class at the special hidden class,
# and pointed that class' superclass at Object.
#
# This is what happens, Ruby calls the special hidden class a "singleton class"
self.method(:inspect).owner  # => #<Class:#<Object:0x007f99330e1c70>>
self.singleton_class         # => #<Class:#<Object:0x007f99330e1c70>>
    .superclass              # => Object



# When we ask the class, though, Ruby tells us it's Object...
# That's because it skips opver the singleton class
# https://github.com/ruby/ruby/blob/8895c18dc69a0873bf54e4bba046250b59f731f9/object.c#L206



# How do we define a singleton method? There are two syntaxes for this.
# Whenever we see `def something.methodname`, we are defining `methodname` in `something`'s singleton class
def self.wat
  :bbq
end
self.wat # => :bbq



# Whenever we see `class << something`, we are opening the singleton class of `something`
self.singleton_class # => #<Class:#<Object:0x007f99330e1c70>>
class << self
  self               # => #<Class:#<Object:0x007f99330e1c70>>
end

class << self
  def omg
    :wtf
  end
end
self.omg # => :wtf



# What if we replace the singleton class's method one that calls to the original inspect?
# ...now main inspects like every other object!
self # => main
def self.inspect
  super
end
self # => #<Object:0x007f99330e1c70>



# So what does it look like to create main?
# https://github.com/ruby/ruby/blob/8895c18dc69a0873bf54e4bba046250b59f731f9/vm.c#L2870
main = Object.new  # => #<Object:0x007f9933023798>

class << main
  # https://github.com/ruby/ruby/blob/8895c18dc69a0873bf54e4bba046250b59f731f9/vm.c#L2871
  # https://github.com/ruby/ruby/blob/8895c18dc69a0873bf54e4bba046250b59f731f9/vm.c#L2854-2857
  def to_s
    'main'
  end

  # https://github.com/ruby/ruby/blob/8895c18dc69a0873bf54e4bba046250b59f731f9/vm.c#L2872
  alias inspect to_s
end
main # => main



# Using the singleton class, we can override new on an object:
class User
  # take any number of arguments
  def self.new(*args)
    instance = allocate                    # => #<User:0x007f9933023270>
    instance.__send__(:initialize, *args)  # => 32
    instance                               # => #<User:0x007f9933023270 @name="Josh", @age=32>
  end

  def initialize(name, age)
    @name = name
    @age  = age
  end
end

User.new('Josh', 32)  # => #<User:0x007f9933023270 @name="Josh", @age=32>
