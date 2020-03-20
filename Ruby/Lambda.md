## Like procs, lambdas are objects

Syntax: 
lambda { |param| block }
throw you an error if you pass wrong number of arguments
A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.

```ruby 
lambda { puts "Hello!" }

## we can path the method to paramether 

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

# create symbol using lambdas

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |e| e.to_sym }
symbols = strings.collect(&symbolize)
print symbols

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

# new onew 

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda { |e| e.is_a? Symbol}
symbols = my_array.select(&symbol_filter)
puts symbols

# the other way 

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M" }

a_to_m = crew.select(&first_half)

puts a_to_m
```
