=begin
Write a function that, given a string of text 
(possibly with punctuation and line-breaks), 
returns an array of the top-3 most occurring words,
in descending order of the number of occurrences.
=end

def top_3_words(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end

test_1 = "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"
test_2 = "  //wont won't won't"
test_3 = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

p top_3_words(test_1)
p top_3_words(test_2)
p top_3_words(test_3)