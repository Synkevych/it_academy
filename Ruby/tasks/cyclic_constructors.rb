# while
i = 0
while i < list.size do
	print "#{list[i]} "
	i += 1
end

# until -> opposite to while
i = 0
until i == list.size do
	print "#{list[i]} "
	i += 1
end

# while at the end -> bad
i = 0
begin 
	print "#{list[i]} "
	i += 1
end while i < list.size

# until at the end -> bad
i = 0
begin 
	print "#{list[i]} "
	i += 1
end until i == list.size

# for 
for x in list do
	print "#{x}"
end

# each -> good 
list.each do |x|
	print "#{x} "
end

# loop 
i = 0
n = list.size-1
loop do
	print "#{list[i]} "
	i += 1
	break if i > n
end

# times 
n = list.size
n.times do |i| 
	print "#{list[i]} "
end

# upto
n = list.size-1
0.upto(n) do |i|
	print "#{list[i]} "
end

# each_index 
list.each_index do |x|
	print "#{list[x] "
end