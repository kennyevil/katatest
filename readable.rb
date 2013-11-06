#!/usr/bin/ruby


dictionary = File.foreach('dictionary.txt').map { |line| line.split('\n') }

one_letter_words = Array.new
two_letter_words = Array.new
three_letter_words = Array.new
four_letter_words = Array.new
five_letter_words = Array.new
six_letter_words = Array.new

for word in dictionary do
  if word.to_s.length == 7 
    one_letter_words.push(word)
  elsif word.to_s.length == 8
    two_letter_words.push(word)
  elsif word.to_s.length == 9
    three_letter_words.push(word)
  elsif word.to_s.length == 10
    four_letter_words.push(word)
  elsif word.to_s.length == 11
    five_letter_words.push(word) 
  elsif word.to_s.length == 12
    six_letter_words.push(word)
  end
end

puts "There are #{one_letter_words.size} one-letter words"
puts "There are #{two_letter_words.size} two letter words"
puts "There are #{six_letter_words.size} six letter words"

