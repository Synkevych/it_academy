def length_finder(input_array)
	input_array.map { |string| string.length }
end

puts length_finder(['I','am','genius'])

# sorting strings by length of words 

def sort_string(string)
	string.split(' ').sort { |x,y| x.length - y.length }.join(" ")
end

puts sort_string("Awesome I am")
puts sort_string("Sort words in a sentence")

# find frequency word of arrays

def find_frequency(sentence, word)
	sentence
		.dowcase
		.split(' ').count(word)
end

puts find_frequency("Do or do not")

# is palindrome ? 

def palindrome?(sentence)
	sentence = sentence.dowcase.gsub(/\s+/, "")
	sentence.reverse == sentence
end

puts palindrome?('Race fast safe car') #=> true

# sum of cubes using inject 
def sum_of_cubes(a,b)
	(a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

puts sum_of_cubes(1, 3) # => 36

# find not dublicated values 

def non_duplicated_values(values)
	values.find_all { |x| values.count(x) == 1 }
end

puts ([1,2,2,3,4,5]) #=> [1,3,4,5]

# find the most long word 

words = %w[ alpha beta gamma delta epsilon eta theta ]
longes_word = words.inject do |longest, word|
	word.length > longest.length ? word : longest
end

puts longes_word # => "epsilon"