#ROUND SELECTOR
puts "The game is Rock, Paper, Scissors. What score wins?"

while win = gets.chomp.to_i
  if win == 0
    puts "Please enter a valid number of rounds."
  else
    break
  end
end

# If using round selector, comment out this line:
#win = 2
pwins = 0
cwins = 0
print "Rock, Paper, Scissors. First to #{win} wins.\n"
puts ""
until pwins == win || cwins == win
# Show the score
  print "Player score: #{pwins}, Computer score: #{cwins}\n"
# Player chooses their weapon
  puts "Choose rock (r), paper (p), or scissors (s): "
  player = gets.chomp
  case player
  when "r" then puts "Player chose rock."
  when "p" then puts "Player chose paper"
  when "s" then puts "Player chose scissors"
  else
      player = 'x'
      puts "Invalid entry, try again"
      puts ""
  end
# Computer chooses its weapon
  computer = rand(3)
    if player!= 'x'
      case computer
      when 0
        computer = 'r'
        puts "Computer chose rock."
        puts ""
      when 1
        computer = 'p'
        puts "Computer chose paper."
        puts ""
      when 2
        computer = 's'
        puts "Computer chose scissors."
        puts ""
      end
    end
# Let the game begin!
    puts "It's a tie, pick again!" "" if player == computer
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
    print "Player wins the game, #{pwins} to #{cwins}!\n" if pwins == win
    print "Computer wins the game, #{cwins} to #{pwins}!\n" if cwins == win
end
