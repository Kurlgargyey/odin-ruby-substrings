def substring_counter(string, dictionary)
  dictionary.reduce({}) do |tally, word|
# The #scan String method returns an Array with every match already
    tally[word] = string.scan(/#{word}/i).length
# Drop words with 0 occurences
    tally.delete_if{|word,occ| occ == 0}
    tally
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Please enter a string to be searched:"
string = gets.chomp
puts "\n"
puts "Searching the string for words in my dictionary... \n"
puts "This is what I found:"
substring_counter(string,dictionary).each do |word, occ|
  puts "\"#{word}\" occurred #{occ} times."
end