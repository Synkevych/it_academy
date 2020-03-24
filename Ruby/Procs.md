# Procs 

A proc is a saved block we can use over and over.
Also similar to the ampersand operator, a Proc object preceded by an ampersand during a method call will be replaced by the block that it contains. Yield may then be used.


```ruby 
multiply_of_3 = Proc.new do |n|
	n % 3 == 0
end
print (1..100).to_a_select(&multiples_of_3)

cube = Proc.new { |x| x ** 3 }
[1,2,3].collect!(&cube)
# => [1,8,29]

# .floor => round the deciamal to integer

round_down = Proc.new { |x| x.floor }

ints = [2.23, 23.313, 1.2312].collect(&round_down)

# anoter example 
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
over_4_feet = Proc.new { |height| height >= 4}
can_ride_1 = group_1.select(&over_4_feet)
puts can_ride_1


def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

# try anothe 

puts batman_ironman_proc

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new{ |e| e < 100}
youngsters = ages.select(&under_100)
puts youngsters
```