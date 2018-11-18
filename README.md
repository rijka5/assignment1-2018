Ruby Assignment 1
=============

Download this repo or fork and clone it to your workspace

**NOTE: Do not clone this repo to your workspace. Fork it first, then clone your fork.**
 
Overview
--------

**You may find the [Ruby documentation at ruby-doc.org](https://ruby-doc.org) helpful to have on hand.**

The repo for this assigment follows a fairly standard Ruby convention for codebases: the code
files are stored in `lib/` and the test files are stored in `spec/`.
(I use the RSpec unit-testing framework;)

I've placed "starter code" in `lib/ruby.rb`; This is the file that you have to submit
when you are done in order to be graded.

While working on your assignment you can test each of the 3 parts separately.  
The files `spec/part[123]_spec.rb` contain RSpec tests for each of the three
parts of the assignment. For example, to test your answers to Part 1, say `rspec
spec/part1_spec.rb`.  `rspec` with no arguments runs the tests in all
the files `spec/*_spec.rb`.

* The line numbers in the RSpec error report will
give you guidance as to which tests failed.  (You can check the [RSpec
documentation](http://rspec.info) to see how the `.rspec` file can be
used to customize the output format.)

To ensure you have the rspec gem installed you need bundler and can then 
run bundle install like so:

```sh
$ gem install bundler
$ cd assignment1
$ bundle
```

When the above completes successfully you'll have RSpec installed and can
run `rspec` from the command line to test your code.


# 1. Arrays, Hashes, and Enumerables

Check the [Ruby 2.x documentation](http://ruby-doc.org) on `Array`,
`Hash` and `Enumerable` as they could help tremendously with these
exercises. :-) 

0. Define a method `sum(array)` that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.  Run associated tests via:  `$ rspec spec/part1_spec.rb:5`

0. Define a method `max_2_sum(array)` which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. Run associated tests via:  `$ rspec spec/part1_spec.rb:23`

You can check your progress on the all the above by running `$ rspec spec/part1_spec.rb`.


# 2. Strings

0. Define a method `hello(name)` that takes a string representing a name and returns the string "Hello, " concatenated with the name. Run associated tests via:  `$ rspec -e '#hello' spec/part2_spec.rb`

You can check your progress on the all the above by running `$ rspec spec/part2_spec.rb`.


# 3. Object Oriented Basics

0. Define a class `BookInStock` which represents a book with an ISBN
number, `isbn`, and price of the book as a floating-point number,
`price`, as attributes. The constructor should accept the ISBN number (a string,
since in real life ISBN numbers can begin with zero and can include hyphens) as 
first argument and price as second argument. Include the proper getters and setters
for these attributes. 
Run associated tests via:  `$ rspec -e 'getters and setters' spec/part3_spec.rb` 

0. Include a method `format_isbn` that returns the isbn of
the book formatted without leading and trailing whitespace and all letters should be
uppercase, that is, a isbn of " isbn " should be formated as "ISBN". 
Run associated tests via:  `$ rspec -e '#format_isbn' spec/part3_spec.rb`

You can check your progress on the all the above by running `rspec spec/part3_spec.rb`.

