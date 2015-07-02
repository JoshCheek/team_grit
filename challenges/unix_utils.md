# Create your own!

Create your own versions of these programs. You don't need to test them.

## echo

Echo is a program that prints out its ARGV, with spaces between them.

```sh
$ echo a
a

$ echo a b
a b

$ echo a b c
a b c

$ echo a b cdefg
a b cdefg

$ echo a b cdefg     hijkl
a b cdefg hijkl
```

Write this program, such that I can run it like this:

```sh
$ ruby echo.rb a b c
a b c
```


## cat

Cat is a program that "conCATenates" files... which is to say, it prints them out :P
It expects each item given to it to be a filename. It prints each filename.

```sh
$ tree
.
├── file1
└── file2
1 directory, 6 files

$ cat file1
this
is
file1

$ cat file2
THIS
IS
FILE2

$ cat file1 file2
this
is
file1
THIS
IS
FILE2
```

Write this program, such that I can run it like this:

```sh
$ ruby cat.rb file1 file2
this
is
file1
THIS
IS
FILE2
```


## wc

Wc is a "Word Count" program. It reads filenames in, from argv, and prints out how many lines, "words", and characters are in the file.
Lines are delimited by newlines, words are delimited by any whitespace. If more than one program is provided, it prints a total.

```sh
$ wc cat.rb
       1       6      50 cat.rb

$ wc file1
       3       3      14 file1

$ wc file2
       3       3      14 file2

$ wc cat.rb
       1       6      50 cat.rb

$ wc file1 file2 cat.rb
       3       3      14 file1
       3       3      14 file2
       1       6      50 cat.rb
       7      12      78 total
```

Write this program, such that I can run it like this (you can ignore the spacing, but if you get it working, try adding the spacing as an extra challenge ^_^)

```sh
$ ruby wc.rb file1 file2 cat.rb
3       3      14 file1
3       3      14 file2
1       6      50 cat.rb
7      12      78 total
```
