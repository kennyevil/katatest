#!/usr/bin/ruby

dictionary = File.foreach('dictionary.txt').map { |line| line.split(' ') }

one_letter_words = Array.new

for word in dictionary do
  if word.size == 1 
    one_letter_words.push(word) 
  end
end

puts one_letter_words
