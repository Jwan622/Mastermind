class Messages

  def too_short
    "Your guess is too short! Try again!"
  end

  def too_long
    "Your guess is too long! Try again!"
  end

  def intro_greeting
    "Welcome to Mastermind! Select 'p' to play, 'q' to quit"
  end

  def guess_request
    "\nWhat is your 4 color guess? Use 'r' for red, 'y' for yellow, 'p' for purple,
    'b' for blue, 'w' for white, 'g' for green."
  end

  def not_valid_input
    "That isn't a valid choice. Try again. Remember, input your colors as consecutive single letters."
  end

  def quit_message
    "Aww, come back and play again soon!"
  end

  def instruction_reminder
    "Remember, you are trying to guess the 4 colors that I picked. Guess using 'r' for red, 'y' for yellow, 'p' for purple,
    'b' for blue, 'w' for white, 'g' for green."
  end

  def red_pegs(number)
    "Your guess returns #{number} red pegs."
  end

  def white_pegs(number)
    "your guess returns #{number} white pegs."
  end

  def turn_number_print(number)
    "Your turn number is #{number}. You have {20 - number} turns left."
  end

  def game_win
    "You have successfully cracked the computer code! Well done."
    guess_request
  end

  def no_spaces
    "Don't put spaces between your guess! You guess should be something like 'rrgb'"
  end
end
