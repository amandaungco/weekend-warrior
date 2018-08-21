=begin prompt user for which year they want to check
set user input to year
create method that takes year and checks to see if it is a leap year
    year == leap year if
    year % 4 == 0 || year % 400 == 0 && year % 100 != 0
  puts it's a leap year!


    end
=end
def leap_year?(year)
  year = year.to_i
  if (year % 4 == 0) && !(year % 100 == 0) || (year % 400 ==0)
    output = true
  else ouput = false
  end
  return output
end


puts "Welcome to the leap year calculator"
puts "What year would you like to check?"
year = gets.chomp
puts "Let's ask the calculator: Is #{year} a leap year? True or False."
p leap_year?(year)
