Our Tools
---------

iTerm
-----

The program that runs your terminal (it basically pretends to be hardware from like the 60s or something)
Visually, you can think of it as the thing with the red/yellow/green buttons.
You can always see the current running program by looking up in the title bar.

We also chose the iTerm theme named "Solarized", it has a light and dark theme,
ours is the dark one (hence the dark background),
and this is a slightly modified version called "high contrast".

Fish
----

Our "shell", the program that the terminal runs by default.
It is interactive, you type into it to move around your computer, run other programs, edit files, etc.
This is because back when all these things became established (ancient hardware days),
there were not graphical interfaces at all, so everything was text!
Thus, to interact with the system, we needed something interactive.
That's what the shell is.

Most people use a different shell called "bash", but not because it's good, just because it's the default.

Chruby
------

It changes which Ruby is running (hence "ch" and "ruby")
We use it instead of RVM, because it doesn't expect us to be running bash, but rvm does.
So, to use a different shell, we need a ruby manager that is shell agnostic.

Atom
----

A text editor (edits files that are made up of nothing but text characters -- vs something like Microsoft Word,
which has information beyond the text, like whether something is bold, or a header, or a table or a picture.)
We are using it, because I wrote code that makes Seeing Is Believing work in it, and I haven't yet written the
code that will allow it to work in RubyMine.

Seeing Is Believing (SiB)
-------------------------

A program that I wrote which allows you to press a button (typically command + option + b), in your editor,
and have it evaluate the current Ruby program, adding a comment to each line that displays the last value
on that line. SiB is made available to you through another program whose job is to help you get the code
you need. That program is called "Rubygems", and the code you get from it is called a "gem".
So SiB is a gem.
