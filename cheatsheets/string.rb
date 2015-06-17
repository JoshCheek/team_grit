# =====  String  =====
# a string is a collectin of textual characters including digits, letters, whitespace, and symbols

# length
#

# "howareyou".length         # => 9
a = "a" + "b" + "z" + "c"
a.length

# +


# ==


# []

# []=

# chars

# chomp

# upcase

# downcase
"TeST".downcase

# empty?

# include?

# sub
# substitutes the first instance of the first parameter, 'bar' with the second parameter, 'foo'
# only does one substitution at a time, on the first instance of the text to match

puts "foobar".sub("bar", "foo")

# gsub
# does multiple substitutions at once.  substites all occurances of the first parameter with the second.
puts "this is a test".gsub("i", " ")

# scan

"This is a test".scan(/\w\w/) { |x| puts x }
