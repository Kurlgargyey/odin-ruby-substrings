def substring_counter(string, dictionary)
  tally = dictionary.reduce(Hash.new(0)) do |tally, word|
    matches = string.scan(/#{word}/i)
    if matches
      tally[word.to_sym] = matches.length
    end
    tally
  end
  tally.delete_if{|word,occ| occ == 0}
  tally
end

dictionary = ["told", "you", "so", "obviously","yes","no"]
string = "Told you so! Told Told Told you so!"
#word ="told"
#p string.scan(/#{word}/i)
p substring_counter(string,dictionary)