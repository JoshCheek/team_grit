Answers at the end.

Questions
---------

1. What does it mean if I say

  ```
  $ which ruby
  /Users/josh/.rubies/ruby-2.1.1/bin/ruby
  ```
2. What does it mean? If I say

  ```
  $ ruby ./hello_world.rb lol
  You said lol
  ```
3. Make the program from #2
4. Do all ruby files end in `.rb`?
5. Is this possible?

   ```
   $ ruby ./index.html lol
   You said lol
   ```
6. Why do you not see the example in #5?
7. Is the input filename always the first argument to the program?
8. A file is just...
9. What are each of these?
   ```ruby
   a
   self.a
   a()
   self.a()
   :a
   "a"
   A
   a 1
   a(1)
   self.a(1)
   @a
   $a
   def
   1
   11111111111111111111111111111111111111111111111111111111111
   a = 1
   self.a = 1
   1.23
   ```
10. What is this:
   ```ruby
   puts
   ```
11. What is this:
    ```ruby
    require "minitest/pride"
    ```
12. If we ran this code, what will happen?
    ```ruby
    lol
    ```
13. If we ran this code, what will happen?
    ```ruby
    def lol(lol)
      lol
    end
    lol = 123
    lol lol
    ```
14. What does this line mean?

    ```
    $ gem install redcarpet
    Fetching: redcarpet-3.3.2.gem (100%)
    Building native extensions.  This could take a while...
    Successfully installed redcarpet-3.3.2
    1 gem installed
    ```
15. What does the program `cat` do?
16. Where are the programs `cat` and `gem` located?
17. What does the program `pwd` tell you? (if you don't know, don't search for it,
    instead try it and see, then make a hypothesis about what it does,
    and think of a way to test that the hypothesis is correct)
18. Cat out a file, lets say it's called `my_input.markdown`, so: `$ cat my_input.markdown`
    Without asking anyone or looking the answer up, take a guess at what you think this will do: `$ cat my_input.markdown my_input.markdown`
    If you guessed incorrectly, devise experiments until you understand what it does.
19. You can render markdown with `redcarpet` like this:

    ```ruby
    require 'redcarpet'                           # => true
    renderer = Redcarpet::Render::HTML.new        # => #<Redcarpet::Render::HTML:0x007fe934876c78>
    markdown = Redcarpet::Markdown.new(renderer)  # => #<Redcarpet::Markdown:0x007fe9348769d0 @renderer=#<Redcarpet::Render::HTML:0x007fe934876c78>>
    markdown.render('# omg')                      # => "<h1>omg</h1>\n"
    ```

    Go write [Chisel](http://tutorials.jumpstartlab.com/projects/chisel.html)
    by cheating and using redcarpet instead of making your own parser.
    You succeed once this code works:

    ```
    $ ruby ./lib/chisel.rb my_input.markdown my_output.html
    Converted my_input.markdown (6 lines) to my_output.html (8 lines)
    ```


Answers
-------

1. The dollar sign means we're entering this at the shell, the shell will turn it into the array `["which", "ruby"]`,
   and it will go run the program `which`, handing it the arguments `["ruby"]`. This program will look in all the places
   that programs can be, until it finds one named `ruby`. The second line is what the program printed: the location of Ruby.
2. The dollar sign means we're entering this at the shell, the shell will turn it into the array `["ruby", "./hello_world.rb", "lol"]`,
   and it will go run the program `ruby`, handing it the arguments `["./hello_world.rb", "lol"]`. Ruby will then go look for the file
   `./hello_world.rb`, where the dot means that it looks in the current directory for a file named `hello_world.rb`. When it finds that
   program, it will set the constant `ARGV` to `["lol"]` and run the code in the file. The second line, "You said lol" is what the program
   printed.
3. `puts "You said #{ARGV[0]}"`
4. No, the extension means nothing, we just choose to put them there so that we know it should be Ruby code in the file.
   But nothing forces it to actually be Ruby code.
5. Yes, if we put Ruby code in `index.html`
6. Because by naming it `index.html`, we're telling the world that the code in the file is html code... but it's not, it's Ruby code.
   This would be really confusing for people.
7. No, it's totally arbitrary, the arguments have no meaning except that the program does things with them that gives them meaning.
8. A string on your hard drive
9. ```
   a          # maybe a local variable, maybe a method
   self.a     # a method named a, being called on self
   a()        # a method named a, being called on self
   self.a()   # a method named a, being called on self
   :a         # the Symbol a
   "a"        # the String a
   A          # the constant A
   a 1        # a method named a, being called on self with one argument, the Fixnum 1
   a(1)       # a method named a, being called on self with one argument, the Fixnum 1
   self.a(1)  # a method named a, being called on self with one argument, the Fixnum 1
   @a         # the instance variable a
   $a         # the global variable a
   def        # a keyword that creates a method
   1          # the Fixnum 1
   11111111111111111111111111111111111111111111111111111111111 # the Bignum 1
   a = 1      # setting the local variable a to 1
   self.a = 1 # calling the method a= on self with one argument, the Fixnum 1
   1.23       # the Float 1.23 (one and twenty three hundredths)
   ```
10. Either a local variable or a method (based on context, it's probably a method)
11. A method named `require`, being called on `self`, with one argument, the String `"minitest/pride"`.
    That method will go look in places that Ruby keeps code, until it finds the file `pride.rb` in a directory
    named `minitest`, and it will assume the code in that file is Ruby, and evaluate it.
12. It will raise an undefined local variable or method.
13. ```ruby
    1 def lol(lol)
    2   lol
    3 end
    4 lol = 123
    5 lol lol
    ```

    Line 1: define the method `lol`. Line 4: define the local variable `lol`, which points at the Fixnum `123`,
    Line 5: the left `lol` must be a method, because we're giving it an argument, the right `lol` is either a
    method or a local variable, Ruby looks for local variables first, so it finds the local variable `lol` that
    we assigned on line 4, and passes that as an argument to the method `lol`. To call the method `lol`, it looks
    on `self`'s class, `self` is main, so its class is Object, which is where the method `lol` was defined.
    It adds a new binding, sets `self` to main, sets the local variable `lol` in the new binding to point at the argument
    we gave it, `123`, it sets the return value to `nil`. It goes to line 2, where it sees `lol`, which is either a local variable
    or a method. It looks for the local variable, and finds the one defined as an argument on line 1, looks it up and finds `123`
    Because line 2 evaluated to `123`, it sets the return value to `123`. The method is over, so it pops the binding off the stack,
    returning to line 5 with the return value of `123`, so line 5 evaluates to `123`. The program ends.
14. The dollar sign implies the "prompt" (mine is a fish), so we run it at the shell. It will find the program `gem` and set its arguments to `["redcarpet"]`
    The program `gem` will go find `redcarpet` and install it, printing out information that says this, as it does so.
15. It prints out files.
16. Where are the programs `cat` and `gem` located?
17. It prints out the directory you are in. You can verify it by `cd`ing to different directories and running `pwd` to see it give back different values.
18. It prints out each program in its `ARGV`
19. ```ruby
    input_filename  = ARGV[0]
    output_filename = ARGV[1]

    markdown = File.read input_filename

    require 'redcarpet'
    renderer = Redcarpet::Render::HTML.new
    html     = Redcarpet::Markdown.new(renderer).render(markdown)

    File.write(output_filename, html)

    puts "Converted #{input_filename} (#{markdown.lines.count} lines) to #{output_filename} (#{html.lines.count} lines)"
    ```
