class Robot
  def initialize
    name_array = ("A".."Z").to_a.sample(2)
    three_numbers = rand(111..999).to_s
    name_array << three_numbers
    @name = name_array.join
    return @name
  end

  attr_reader :name


  def reset
    name_array = ("A".."Z").to_a.sample(2)
    three_numbers = rand(111..999).to_s
    name_array << three_numbers
    @name = name_array.join
    return @name
  end

end
