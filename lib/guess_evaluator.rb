require_relative './Shuffler1'
require_relative './guess'

class GuessEvaluator
  attr_reader :player_guess, :game_answer

  def initialize(player_guess, game_answer)
    @player_guess = player_guess.chars
    @game_answer = game_answer.chars
    @count_white_pegs = 0
    @count_red_pegs = 0
    @count_no_pegs = 0
  end

  def basic_check
    case player_guess
    when player_guess.length < 4
      puts "Your guess is too short. Guess again."
    when player_guess.length > 4
      puts "Your guess is too long. Guess again."
    when player_guess == game_answer
      puts "Boom Shaka Laka! You win"
    else
      GuessEvaluate.evaluate(player_guess, game_answer)
    end
  end

  def self.evaluate(player_guess, game_answer)
    player_guess.each do |element|
      if @answer.include?(element)
        count_white_pegs += 1
      elsif element == answer[player_guess.index(element)]
        count_red_pegs += 1
        count_white_pegs -= 1
      else
        @count_no_pegs += 1
      end
    end
  end
end
