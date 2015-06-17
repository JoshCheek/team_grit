# =====  Class  =====

a definition of a concept. can inherit features from other classes, but still have unique features of their own.  


# new, instance_methods

class Person
  def initialize
    @age = 0
  end

  def year_passes
    @age += 1
  end

  def age
    @age
  end
end

rachel = Person.new
rachel.year_passes
rachel.year_passes
rachel.age

jeff = Person.new
jeff.age


################################

class User
  def set_name
    @name = "Bob"          # => "Bob"
    surname = "Cratchett"  # => "Cratchett"
  end                      # => :set_name

  def hi
    puts "Hello, " + @name
  end                       # => :hi

  def hello
    puts "Hello, Mr " + surname
  end                            # => :hello

  def name
    @name   # => nil
  end       # => :name
end         # => :name

u = User      # => User
u = User.new  # => #<User:0x007fb4e19e4470>



u  # => #<User:0x007fb4e19e4470>

u.name  # => nil

v = u.set_name  # => "Cratchett"
v               # => "Cratchett"
u.name          # ~> NoMethodError: undefined method `name' for "Cratchett":String


# class MathFunctions
#   def set_numbers
#     @a = 1           # => 1, 1
#     return @b = 2    # => 2, 2
#   end                # => :set_numbers
#
#   def a
#     return @a  # => nil, 1
#   end          # => :a
#
#   def add
#     return @a + @b
#   end               # => :add
#
#   def clear_numbers
#     @a = nil
#     return @b = nil
#   end                # => :clear_numbers
# end                  # => :clear_numbers
#
# instance = MathFunctions.new  # => #<MathFunctions:0x007f8ca30f86d8>
# instance.a                    # => nil
# instance.set_numbers          # => 2
# instance.a                    # => 1
#
# instance.set_numbers / 2 == 1  # => true
# you can think of the return value as what the method call is really equal to. In this case, instance.set_numbers
# returns 2, but you can also think of it as equalling 2. instance.set_numbers really is the number 2 (its return value)
