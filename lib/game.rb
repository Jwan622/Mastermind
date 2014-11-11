require_relative 'Shuffler1'
require_relative 'Messages'
require_relative 'guess_evaluator'

class Game

  attr_accessor :player_guess, :comp_answer, :messages, :turn_number

  def initialize
    @player_guess = gets.chomp.downcase
    @comp_answer = Shuffler1.new.comp_answer
    @messages = Messages.new
    @turn_number = 0
    process_guess
  end

  def process_guess
    case
    when @player_guess.too_short?
      @messages.too_short
      guess_again
    when @player_guess.too_long?
      @messages.too_long
      guess_again
    when @player_guess.not_a_valid_guess?
      @messages.not_valid_input
      guess_again
    when @player_guess.has_spaces?
      @messages.no_spaces
      guess_again
    else
      play
    end
  end

  def play
    evaluator = GuessEvaluator.new(@player_guess, @comp_answer)
    until evaluator.exact_match?
      evaluator.exact_match_check
      evaluator.white_match_check
      @turn_number += 1
      @messages.turn_number_print(@turn_number)
    end
    @messages.game_win
  end

  def guess_again
    @player_guess = gets.chomp.downcase
  end

private

  def too_short?
      @player_guess.length < 4
  end

  def too_long?
    @player_guess.length > 4
  end

  def not_a_valid_guess?
    @player_guess.chars.all? do |character|
      character =~ /[rgbpyw]/
    end
  end
