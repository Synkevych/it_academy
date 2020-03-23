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

#