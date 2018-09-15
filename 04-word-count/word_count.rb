def words(string)
  words = string.split(' ')
  counts = {}
  words.each do |word|
    counts[word] = 1
  end
  return counts
end
