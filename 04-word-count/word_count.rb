def words(string)
  words = string.split(' ')
  counts = {}
  words.each do |word|
    if counts.include? word
      counts[word] += 1
    else counts[word] = 1
    end
  end
  return counts
end
