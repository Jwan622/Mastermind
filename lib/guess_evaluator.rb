require_relative './Shuffler1'  # => true, false
require_relative './guess'      # => false, true

class GuessEvaluator
  attr_reader :player_guess_array, :game_answer_array, :combined_array, :count_red_pegs,  # => :count_red_pegs, :count_red_pegs
  :count_white_pegs, :count_no_pegs                                                       # => nil, nil

  def initialize(player_guess, game_answer)
    @player_guess_array = player_guess.chars
    @game_answer_array = game_answer.chars
    @count_white_pegs = 0
    @count_red_pegs = 0
    @count_no_pegs = 0
  end

  def exact_match_check
    combined_array = @player_guess_array.zip(@game_answer_array)
    combined_array.each do |array|
      if array[0] == array[1]
        @count_red_pegs += 1
      end
    end
  end

  def white_match_check
    player_guess_array.each do |element|
      if game_answer_array.include?(element)
        @count_white_pegs += 1
      end
    end
    @count_white_pegs -= @count_red_pegs
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

  def exact_match
    @player_guess_array == @game_answer_array
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
