def substring_counter(string, dictionary)
# 
  tally = dictionary.reduce(Hash.new(0)) do |tally, word|
# The #scan String method returns an Array with every match
    tally[word] = string.scan(/#{word}/i).length
    tally
  end
# Drop words with 0 occurences
  tally.delete_if{|word,occ| occ == 0}
  tally
end

dictionary = ["told", "you", "so", "obviously","yes","no"]
string = "Told you so! Told Told Told you so! obviously obviously obviously obviously yes"
#word ="told"
#p string.scan(/#{word}/i)
p substring_counter(string,dictionary)