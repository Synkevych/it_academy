# We can use just block of code

- { |x| x.to_s }
- do x.to_s end 

```ruby 

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select { |e| e.is_a? Integer}
puts ints
````
