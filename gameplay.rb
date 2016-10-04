require './player.rb'

def create_players
  # Initial question asking how many players to create.
  puts "How many players are there? 1 or 2?"
  number_of_players = gets.chomp.to_i

  # If statement for one or two playesr. And then raise and error if the user gives something other than intergers 1 or 2.
  if number_of_players == 1
    puts "Name of Player 1"
    player_name1 = gets.chomp
    puts "Thanks #{player_name1}!"

    # Create the users calling the Player object in player.rb.
    @user1 = Player.new("#{player_name1}", "PC")
    @user2 = Player.new("Computer Player", "NPC")

  elsif number_of_players == 2
    puts "Name of Player 1?"
    player_name1 = gets.chomp
    puts "Name of Player 2?"
    player_name2 = gets.chomp
    puts "Thanks #{player_name1} and #{player_name2}!"

    # Create the users calling the Player object in player.rb.
    @user1 = Player.new("#{player_name1}", "PC")
    @user2 = Player.new("#{player_name2}", "PC")

  else
    # If the user uses something other than numbers 1 or 2. An error message will appear.
    raise "Must be 1 or 2 players any other numbers are invalid."
  end
end

def choose_your_item
  puts "Your item is #{@users_item}"
end



create_players
puts @user1.player_type
