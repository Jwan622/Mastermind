class Messages

  def too_short
    "Your guess is too short! Try again!"
  end

  def too_long
    "Your guess is too long! Try again!"
  end

  def wrong_length
    "Your guess is not the right length. Try again!"
  end

  def intro_greeting
    "Welcome to Mastermind! Select 'p' to play, 'q' to quit' or 'i' for instructions."
  end

  def guess_request
    "\nWhat is your 4 color guess? Use 'r' for red, 'y' for yellow, 'p' for purple, 'b' for blue, 'w' for white, 'g' for green. You can also type in 'quit' to quit the game."
  end

  def not_valid_input_on_first_screen
    "That isn't a valid choice. Try again.\n"
  end

  def not_valid_input
    "\nThat isn't a valid guess. Remember your 4-letter guess can only include the letters [r,g,p,y,w,b]. Guess again!"
  end

  def quit_message
    "Aww, come back and play again soon!"
  end

  def instruction_reminder
    "Here are the instructions to Mastermind. You are trying to crack a computer code. You need to guess the 4 colors that I picked. Guess using 'r' for red, 'y' for yellow, 'p' for purple, 'b' for blue, 'w' for white, 'g' for green. You have 20 turns to guess the correct code. \nGood luck!"
  end

  def red_pegs(number)
    "Your guess returns #{number} red pegs."
  end

  def white_pegs(number)
    "Your guess returns #{number} white pegs."
  end

  def turn_number_print(number)
    "Your turn number is #{number}. You have #{20-number} turns left."
  end

  def game_win(time)
    "You have successfully cracked the computer code in #{time/60} minutes! Well done.}"
  end

  def no_spaces
    "Don't put spaces between your guess! You guess should be something like 'rrgb'"
  end

  def say_score(score)
    "Your score this round is #{score}."
  end

  def quitter_during_guessing
    "Your are quitting because you are weak. You lose."
  end

  def game_lost
    "You took too many turns and you couldn't crack the code. Try again!\n"
  end

  def starter(hour, minute, second)
    "The game has begun. The start time is #{hour}:#{minute}:#{second}. The pressure is on."
  end

  def ending_time(hour, minute, second)
    "The game has ended. Your end time is #{hour}:#{minute}:#{second}."
  end
end
