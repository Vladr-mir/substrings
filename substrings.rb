def many_include(word, sub)
  times = 0
  new_word = word
  while new_word.include?(sub)
    times += 1
    new_word = new_word.sub(sub, "")
  end
  times
end

def substrings(word, valid_substrings)
  valid = Hash.new(0)
  valid_substrings.each do |sub|
    valid[sub] += many_include(word.downcase, sub) if word.downcase.include?(sub) 
  end
  valid
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"
p  substrings(word, dictionary)
