start_time = Time.now
dictionary = File.foreach('dictionary.txt').map { |line| line.split.to_s }

one_letter_words = Array.new
two_letter_words = Array.new
three_letter_words = Array.new
four_letter_words = Array.new
five_letter_words = Array.new
six_letter_words = Array.new
concatenated_words = Array.new


for word in dictionary do
  if word.length == 5
    one_letter_words.push(word)
  elsif word.length == 6
    two_letter_words.push(word)
  elsif word.length == 7
    three_letter_words.push(word)
  elsif word.length == 8
    four_letter_words.push(word)
  elsif word.length == 9
    five_letter_words.push(word)
  elsif word.length == 10
    six_letter_words.push(word)
  end
end

for word in six_letter_words do
  
  test1 = "[\"#{word.slice(2)}\"]"
  test2 = "[\"#{word.slice(2..3)}\"]"
  test3 = "[\"#{word.slice(2..4)}\"]"
  test4 = "[\"#{word.slice(2..5)}\"]"
  test5 = "[\"#{word.slice(2..6)}\"]"

  remainder1 = "[\"#{word.slice(3..7)}\"]"
  remainder2 = "[\"#{word.slice(4..7)}\"]"
  remainder3 = "[\"#{word.slice(5..7)}\"]"
  remainder4 = "[\"#{word.slice(6..7)}\"]"
  remainder5 = "[\"#{word.slice(7)}\"]"

  
  if one_letter_words.include?(test1) && five_letter_words.include?(remainder1)
    concatenated_words.push(word)
  elsif two_letter_words.include?(test2) && four_letter_words.include?(remainder2)
    concatenated_words.push(word)
  elsif three_letter_words.include?(test3) && three_letter_words.include?(remainder3)
    concatenated_words.push(word)
  elsif four_letter_words.include?(test4) && two_letter_words.include?(remainder4)
    concatenated_words.push(word)
  elsif five_letter_words.include?(test5) && one_letter_words.include?(remainder5)
    concatenated_words.push(word)
  end
end

puts "there are #{concatenated_words.size} concatenated words and this took #{Time.now - start_time} seconds to run."
