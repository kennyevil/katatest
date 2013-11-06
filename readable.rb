#!/usr/bin/ruby


dictionary = File.foreach('dictionary.txt').map { |line| line.split(' ') }

one_letter_words = Array.new
two_letter_words = Array.new
three_letter_words = Array.new
four_letter_words = Array.new
five_letter_words = Array.new
six_letter_words = Array.new
concatenated_words = Array.new

for word in dictionary do
  if word.to_s.length == 5 
    one_letter_words.push(word)
  elsif word.to_s.length == 6
    two_letter_words.push(word)
  elsif word.to_s.length == 7
    three_letter_words.push(word)
  elsif word.to_s.length == 8
    four_letter_words.push(word)
  elsif word.to_s.length == 9
    five_letter_words.push(word) 
  elsif word.to_s.length == 10
    six_letter_words.push(word)
  end
end

for word in six_letter_words do
  test = word.to_s.slice!(2..4)
  puts test
  
  if three_letter_words.include?(test)
    puts "aye"
    concatenated_words.push(word)
  end

end

puts "there are #{concatenated_words.size} concatenated words"
