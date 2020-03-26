def factorial(n)
  raise "argument must be > 0" if n < 1
  return 1 if n == 1
  n * factorial(n-1)
end

puts factorial(10)
puts factorial(3)
puts factorial(0)
