dictionary = File.foreach('dictionary.txt').map { |line| line.split.to_s }

words_array = Array.new
test_array = Array.new
remainder_array = Array.new
concatenated_words = Array.new

for word in dictionary do
  if word.length == 10
    words_array.push(word)
  end
end

for i in 0..4
  for word in dictionary do
    if word.length == i + 5
      test_array.push(word)
      if i + 5 == 7 
	remainder_array.push(word)
      end
    elsif word.length == 9 - i
      remainder_array.push(word)
    end
  end

  puts "#{test_array.size} test words and #{remainder_array.size} remainder words"

  for word in words_array do
    test = word.slice(2..i+2)
    remainder = word.slice(i+3..7)

    if test_array.include?("[\"#{test}\"]")
      if remainder_array.include?("[\"#{remainder}\"]")
	concatenated_words.push(word) unless concatenated_words.include?(word)
      end
    end
  end

  test_array = []
  remainder_array = []

end

puts "there are #{concatenated_words.size} concatenated words"
    
