# =====  Array  =====

#  +
# addition of two arrays
a = [1, 2, 3]        # => [1, 2, 3]
b = ['a', 'b', 'c']  # => ["a", "b", "c"]
a + b                # => [1, 2, 3, "a", "b", "c"]
a                    # => [1, 2, 3]
b                    # => ["a", "b", "c"]

a = ["cat", "dog", "mouse"]      # => ["cat", "dog", "mouse"]
b = ["hamster", "horse", "cow"]  # => ["hamster", "horse", "cow"]
a + b                            # => ["cat", "dog", "mouse", "hamster", "horse", "cow"]
a                                # => ["cat", "dog", "mouse"]
b                                # => ["hamster", "horse", "cow"]

# -
# subtraction of two arrays (gives the array on the left, without any of the elements from the array on the right)
a = ['c', 'c', 'b']  # => ["c", "c", "b"]
b = ['b', 'c', 'd']  # => ["b", "c", "d"]
a - b                # => []
a                    # => ["c", "c", "b"]
b                    # => ["b", "c", "d"]

# <<
# pushes the given object onto the end of this array
a = [:a, :b, :c] << :e   # => [:a, :b, :c, :e]
a = [:a, :b, :c] + [:e]  # => [:a, :b, :c, :e]
a                        # => [:a, :b, :c, :e]

# []
# a[0] => a.[](0) Parenthesis are optional
# set an array equal to a variable. the number in the brackets call upon the index in the array.
# you can also reference the index you want in parenthesis (or not) outside the brackets.
a = [:z, :b, :g]  # => [:z, :b, :g]
a[0]              # => :z
a.[](1)           # => :b

# length (same as size)
# returns the number of elements in self
a = [:a, :b, :c]             # => [:a, :b, :c]
a.length                     # => 3
b = ["cat", "dog", "beast"]  # => ["cat", "dog", "beast"]
b[2].length                  # => 5
b.length                     # => 3

# join
# Returns a string created by converting each element of the array to a string, separated by the given separator.
a = [1, 2, 3].join  # => "123"
a = [1, 2, 3].to_s  # => "[1, 2, 3]"
["1", "2", "3"]     # => ["1", "2", "3"]
  .map { |n|
    n.to_i          # => 1, 2, 3
    }               # => [1, 2, 3]
  .join(',')        # => "1,2,3"

#pop, shift
