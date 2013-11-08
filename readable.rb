start_time = Time.now
dictionary = File.foreach('dictionary.txt').map { |line| line.split.to_s }

words_array = Array.new
test_array = Array.new
concatenated_words = Array.new

for word in dictionary do
  if word.length.between?(5,9)
    test_array.push(word)
  elsif word.length == 10
    words_array.push(word)
  end
end


for word in words_array do
  for i in 0..4
    test = word.slice(2..i+2)
    remainder = word.slice(i+3..7)

    if test_array.include?("[\"#{test}\"]") &&  test_array.include?("[\"#{remainder}\"]")
      concatenated_words.push(word) unless concatenated_words.include?(word)
    end
  end
end


puts "there are #{concatenated_words.size} concatenated words and this process took #{Time.now - start_time} seconds to run."
