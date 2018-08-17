# puts "What's your name?"
# name = gets.chomp

def hello_world(name = "")
    return name == '' ? "Hello, World!" : "Hello, #{name.capitalize}!"
end

# p hello_world(name)
