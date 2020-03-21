### Ruby is ... 🧐

1. Why Ruby
	- high-level - look a lot like a regular English.
	- Interpreted, you don't need a compiler to write and run Ruby. 
	- Object-oriented 
	- Easy to use, developed by Matz, he set out to design a language that 	emphasized 
	human needs over those of the computer, which is why Ruby is so easy to pick up.

1. Data types:
	- Numeric
	- Boolean 
	- String

1. Math operators:
	- Addition ( + )
	- Subtraction ( - )
	- Multiplication ( * )
	- Division ( / )
	- Exponentiation ( ** )
	- Modul0 ( % )
	- Assignment operator ( = )
	- comparator ( == )
	- not equal ( != )
	- less than or equal to (< =)
	- greater than or equal to ( > = )
	- and ( && )
	- or ( || )

1. puts and print 
	- puts like print but add to the and return 
	- print - view in the terminal given value 

1. Methods 
	- /# for Single-line comment 
	- =begin / =end multi-line comments
	- ! modifies the value contained whithin the variable itself
	- ? 
	- { } is the same as do end 

1. Control flow
	- if statement => should be indented two spaces
		- if user_num => 0
		- elsif user_num > 0 
		- else "print this"
		- end 

```ruby
my_num = 12
if my_num > 0
  print "greater than 0"
elsif my_num < 0
  print "is less than 0"
else
  print "Your number is 0"
end
```

- unless => to check if somth is false
	- unless variable
	- else 
	- end
- loop do break
- for i in 1..5 next if end 
 
	
1. Logical or boolean operators 
	- && and - cheak for false 
	- || or => cheak for true 
	- ! - Not 

```ruby 
request_is_successful = false
print "Request is #{request_is_successful}" unless request_is_successful
```

1. Prioryty of && and || in Ruby 

```ruby 
print "Print the sentence:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "We found \"s\" and here your sentence: #{user_input}"
else
  print "Not found \"s\""
end
```

```ruby
# while 

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

# until 

counter = 1
until counter > 10
  puts counter
  counter += 1
end

for num in 1...10
  puts num
end

# loop do | break 

i = 20
loop do
  i -= 1
  puts "#{i}"
break if i <= 0
end

# loop do | next if | break if 

i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i} "
break if i <= 0
end

# each do |

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x} "
end

# method times 

150.times { print "Hello"}

# while looping 

i = 1
while i <= 50 do 
  print "#{i}" 
  i += 1
end

for i in 1..50 
  print "#{i}" 
end

# loop do break if 

i = 0
loop do
  i += 1
  print "Ruby!"
  break if i == 30
end

# time { } || do end 

30.times { print "Ruby!" } 

# program to change the word in sentence 

puts "Type some words:"
text = gets.chomp 

puts "Type Redacted word:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end


```

1. Hashes like JS objects or Python dictionaries 
A collection of key-value pairs
```ruby 
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

# or 

my_hash = Hash.new # or {}
pets["cat"] = "Hover"

pets.each { |x, y| "#{x}: #{y}" }

# to iterate inside sub-arrays 

s.each { |e| 
  e.each { |i| puts i}
}

# or

secret_identities.each do |key, val| 
  puts "#{val}: #{val}"
end
```

1. From user input to hash => histogram
```ruby
puts "Please, type some sentences:"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1}

frequencies = frequencies.sort_by do |word, count|
  count
end
frequencies.reverse!

frequencies.each do |name, count|
  puts "#{name} #{count.to_s}"
end
```

1. Method Syntax 
- def => keyword from start || end
- \*args - splat arguments
- { } or do end => like Nameless Methods

```ruby 
def puts_1_to_10(n)
  (1..10).each { |i| puts i }
end

puts_1_to_10(10)

# using splat arguments

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What's up", "Ian", "Zoe", "Zenas", "Eleanor")

def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

```

1. The Combined Comparison Operator < = >
- return 0 => 1 == 2 || 1  => 1 > 2|| -1 =>  1 > 2
- if value is string => compare length 
```ruby

books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# sorting in descending alphabetical order

fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! { |f,s| s <=> f}

# revese sorting of arrays 

def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

# Give nil other value

no_nil_hash = Hash.new("Duc")
```

1. Symbol 
- puts :symbol.object_id
- my_first_symbol = :ruby => create a symbol Syntax
- used either as hash keys or for referencing method names
- they are immutable
- save memory
- symbol as a keys faster than strings as key
- to_sym => method to converting string to symbols
- .intern => internalize the string into a symbol and works just like .to_sym
- new 1.9 hash syntax => one: 1,
- .each_key => 
- .each_value => 

```ruby

strings.each { |s| symbols.push(s.to_sym) }

movies = {
  :one => "Terminator 1",
  :two => "Terminator 2",
}

good_movies = movie_ratings.select { |name, rat| rat > 3 }

movie_ratings.each_key { |k| puts k}

# the movies app / add / delete / create / 

movies = {
  The_lord_of_the_rings: 4,
  baz: 1,
}
puts "Type command"
choice = gets.chomp
case choice
  when "add"
    puts "What the name?"
    title = gets.chomp
    title = title.to_sym
    puts "What the rating?"
    rating = gets.chomp
    rating = rating.to_i
    if movies[title] == nil
      movies[title] = rating
    else 
      puts "This movie already exist!"
    end
    puts "We add #{movies[title]}"
  when "update"
    puts "What the movie need to update?"
    title = gets.chomp
    if movies[title] != nil
      puts "No this movie!"
    else 
      puts "Print new rating:"
      movies[title] = gets.chop
    puts "Updated! #{movies[title]}"
    end
  when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  when "delete"
    puts "Print the movie name:"
    title = gets.chomp
    if movies[title] != nil
      puts "Error! Not found the movie named #{title}"
    else
      movies.delete(title.to_sym)
      puts "Now we have movies: #{movies}"
    end
  else
    puts "I don\'t know!"
end
```

1. A simple if condition
You can type like this:
	puts "It's true" if true
	puts "Unless also can do it" unless false
A ternary 
	puts 0 == nil ?  "Yes, true" :  "No, false"

1. When and Then: like switch(expression) { case value1: break; } 

```ruby 
puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!

case greeting
  when "English"
    puts "Hello!"
  when "French"
    puts "Bonjour!"
  when "German"
    puts "Guten Tag!"
  when "Finnish"
    puts "Hallo!"
  else
    puts "I don’t know that language!"
end
```

1. Conditional Assignment 
We can use conditional assignment operator ||= 

```ruby
favorite_book ||= "Cat's Cradle"
puts favorite_book
```

1. Implicit Return 
In Ruby methods will return the result of the last evaluated expression

1. Ruby use Short-Circuit Evaluation 
false && true => it stops reading as soon as it sees False
true && true => return second paramether

```ruby 
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |e| puts e if e%2 == 0 }
```
1. Up The Down Staircase

95.upto(100) { |num| print num, " " }

1. Method respond_to and next for integer

puts age.respond_to?(:next)

1. Concatenation operator << 
```ruby
[1,2,3] << 4
"I am " << age.to_s << " years old."
```

```ruby

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
  Prime.first n
end

first_n_primes(10)

[1, 2, 3].each { |num| puts num }

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |num| num * 2 }
```

1. Yield
```ruby 
def block_test
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Now call the method with your name!
yield_name("Roma") { |n| puts "My name is #{n}"}

# provide expression as a parameter to the yield func

def double(num)
  yield
end

double(16) {|x| puts x * 2}
```
DRY -> Don't Repeat Yourself


```ruby 
def greeter
  yield
end

phrase = Proc.new do
  puts "Hello there!"
end

greeter(&phrase)

# with method call
hi = Proc.new do 
  puts "Hello!"
end

hi.call

# You can use the default method in Proc
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)
puts strings_array

```