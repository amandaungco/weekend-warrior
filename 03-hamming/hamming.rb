# Write a program that can calculate the Hamming difference between two DNA strands.
# check if strings are equal length
# convert strings to array
# check if each index of array matches
# if it matches, move on to next one, if it doesnt, +1
#   return integer
require 'pry'

class Hamming
  attr_reader :strand_1, :strand_2

  def initialize(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
  end

  def self.compute(strand_1, strand_2)
    if strand_1.length == strand_2.length
      if strand_1 == strand_2
        return 0
      end
      s1_array = strand_1.split('')
      s2_array = strand_2.split('')
      mutations = s1_array.zip(s2_array).map {|x,y| x != y }
      mutations = mutations.reject{ |element| element == false }
      hamming_distance = mutations.count
      return hamming_distance
    else raise ArgumentError, "These two DNA strands are not the same length"
    end
end
end
