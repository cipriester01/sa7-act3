# code for adventure game. starts with counter to 0 and input to 0
puts "Welcome to the Adventure Game!"
puts "You have 0 points"
counter = 0
user_input = "0"

#until user enters 'exit' loop continues.
until user_input == 'exit'
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  user_input = gets
  # idk why it was like this but it kept reading as a newline so chomp fixed it i guess?
  user_input = user_input.chomp
  if user_input == '1'
    puts "You entered Room 1 and earned 5 points."
    # iterates by adding however much each room value holds
    counter = counter + 5
  elsif user_input == '2'
    puts "You entered Room 2 and earned 10 points."
    counter = counter + 10
  elsif user_input == '3'
    puts "You entered Room 3 and earned 15 points."
    counter = counter + 15
  end
end

# ends game and shows total points collected
puts "Game over! You collected a total of #{counter} points."
