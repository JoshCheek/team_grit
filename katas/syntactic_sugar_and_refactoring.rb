# Kata: correctly predict each value and what it maps to

# The characters you see don't reflect reality
# the interpreter changes them to fit the object model
# the object model defines how everything works
a = ['a', 'b', 'c']
a[0]    # =>
a.[](0) # =>

a # =>
a[1] = 'kangaroo'
a # =>
a.[]=(1, 'geronimo')
a # =>

a = {b: "cd", e: "fg"}
a[:b]    # =>
a.[](:b) # =>
a.[]=(:d, "wat")
a        # =>



# Kata: Correctly predict line numbers and values for each line
# Then try refactoring in several different ways,
# such that the code on the outside (the local variables) still works.
#
# RUN THE CODE AND SEE THAT IT WORKS BETWEEN EACH STEP!!
#
#  1 Move the accessing of attributes into the `logger` method, and delete the `[]` method
#  2 Move the setting of attributes into the `logger=` method, and delete the `[]=` method
#  3 Replace the @attributes instance variable with an @logger instance variable (three lines will need to change)
#  4 Replace the logger method with an attr_reader
#  5 Replace the logger= method with an attr_writer
#  6 Replace the `@logger = 123` in initialize with a call to the logger= method
#    (if this breaks it, make sure you're calling the method, not setting a local variable)
#  7 Replace the attr_reader and attr_writer with an attr_accessor
#  8 Rename the class `A` to be the class `B`
#  9 Rename the method `logger` to be  `paper`
# 10 In initialize, move the fixnum `123` into a local variable, defined just above it.
# 11 Move the local variable to a parameter with that value as a default
# 12 Pass the value when initializing the instance of B
# 13 Remove the default value from initialize
# 14 Work in reverse from this spot, back to the code as it was before you changed anything
# 15 Delete all the code below, and write it from scratch

class A
  def initialize
    @attributes = {logger: 123}
  end

  def logger=(value)
    self[:logger] = value
  end

  def logger
    self[:logger]
  end

  def []=(key, value)
    @attributes[key] = value
  end

  def [](key)
    @attributes[key]
  end
end


a = A.new
a.logger
a.logger = 456
a.logger
