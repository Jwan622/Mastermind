require_relative './Shuffler1'
require_relative './guess'
require_relative './Messages'
class GuessEvaluator
  attr_reader :player_guess_array, :game_answer_array, :combined_array,
  :count_no_pegs, :messages

  attr_accessor :count_white_pegs, :count_red_pegs
  def initialize(player_guess, game_answer, messages)
    @player_guess_array = player_guess.chars
    @game_answer_array = game_answer.chars
    @count_white_pegs = 0
    @count_red_pegs = 0
    @count_no_pegs = 0
    @messages = messages
  end

  def exact_match_check
    combined_array = @player_guess_array.zip(@game_answer_array)
    combined_array.each do |array|
      if array[0] == array[1]
        @count_red_pegs += 1
      end
    end
    puts messages.red_pegs(@count_red_pegs)
  end

  def white_match_check
    player_guess_array.each do |element|
      if game_answer_array.include?(element)
        @count_white_pegs += 1
      end
    end
    @count_white_pegs -= @count_red_pegs
    puts messages.white_pegs(@count_white_pegs)
    peg_reset_for_next_round
  end

  def peg_reset_for_next_round
    @count_white_pegs = 0
    @count_red_pegs = 0
    player_guess = @player_guess
  end

  def exact_match?
    player_guess_array == game_answer_array
  end
end
