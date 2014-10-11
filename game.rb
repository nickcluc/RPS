
=begin
#ROUND SELECTOR
puts "The game is Rock, Paper, Scissors. How many rounds do you want to play?"

while win = gets.chomp.to_i
  if win == 0
    puts "Please enter a valid number of rounds."
  else
    printf("Rock, Paper, Scissors. First to %.0f wins.\n", win)
    break
  end
end
=end

# If using round selector, comment out this line:
win = 2

pwins = 0
cwins = 0


puts ""



while true

# Show the score

  printf("Player score: %.0f, Computer score: %.0f\n", pwins, cwins)

# Player chooses their weapon

  puts "Choose rock (r), paper (p), or scissors (s): "
  player = gets.chomp

    if player == 'r'
      puts "Player chose rock."
    elsif player == 'p'
      puts "Player chose paper"
    elsif player == 's'
      puts "Player chose scissors"
    else
      player = 'x'
      puts "Invalid entry, try again"
      puts ""
    end

# Computer chooses its weapon

  computer = rand(3)
    if player!= 'x'
      if computer == 0
        computer = 'r'
        puts "Computer chose rock."
        puts ""
      elsif computer == 1
        computer = 'p'
        puts "Computer chose paper."
        puts ""
      elsif computer == 2
        computer = 's'
        puts "Computer chose scissors."
        puts ""
      end
    end


# Let the game begin!

    if player == computer
      puts "It's a tie, pick again!"
      puts ""
    end


    if computer == 's' && player == 'r'
      puts "Rock beats scissors, player wins the round"
      puts ""
      pwins += 1
    elsif computer == 'p' && player == 'r'
      puts "Paper beats rock, computer wins the round"
      puts ""
      cwins += 1
    end



    if computer == 's' && player == 'p'
      puts "Scissors beats paper, computer wins the round."
      puts ""
      cwins += 1
    elsif computer == 'r' && player == 'p'
      puts "Paper beats rock, player wins the round."
      puts ""
      pwins += 1
    end



    if computer == 'p' && player == 's'
      puts "Scissors beats paper, player wins the round."
      puts ""
      pwins += 1
    elsif computer == 'r' && player == 's'
      puts "Rock beats scissors, computer wins the round."
      puts ""
      cwins += 1
    end

# Final Score
    if pwins == win
      printf("Player wins the game, %.0f to %.0f!\n", pwins, cwins)
      break
    elsif cwins == win
      printf("Computer wins the game, %.0f to %.0f!\n", cwins, pwins)
      break
    end

end
