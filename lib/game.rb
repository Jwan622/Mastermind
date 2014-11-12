require_relative 'Shuffler1'
require_relative 'Messages'
require_relative 'guess_evaluator'

class Game

  attr_accessor :player_guess, :comp_answer, :messages, :turn_number, :instream, :outstream, :score

  def initialize(instream, outstream, messages)
    @player_guess = ""
    @comp_answer = Shuffler.new.comp_answer
    @turn_number = 0
    @instream = instream
    @messages = messages
    @outstream = outstream
    @score = 20
  end

  def guess
    puts messages.guess_request
    @player_guess = instream.gets.chomp.downcase
    process_guess
  end

  def process_guess
    case
    when its_not_4
      puts messages.wrong_length
      guess
    when quitting?
        puts messages.quitter_during_guessing
    when !not_a_valid_guess?
      puts messages.not_valid_input
      guess
    when has_spaces?
      puts messages.no_spaces
      guess
    end
  end

  def play
    p "#{comp_answer} is the computer answer"
    guess

    evaluator = GuessEvaluator.new(@player_guess, @comp_answer, messages)

    until evaluator.exact_match? || quitting?
      puts "in until loop"
      #<turn>
      evaluator.exact_match_check
      evaluator.white_match_check
      @turn_number += 1
      #why is it when I turn above into turn_number += 1 it fails?
      @score -= 1
      puts messages.turn_number_print(turn_number)
      guess
      evaluator = GuessEvaluator.new(@player_guess, @comp_answer, messages)
    end

    if evaluator.exact_match?
      puts messages.say_score(@score)
      puts messages.game_win
    end
  end

private

  def its_not_4
    player_guess.length != 4
  end

  def quitting?
    player_guess == "quit"
  end

  def not_a_valid_guess?
    @player_guess.chars.all? do |character|
      # character =~ /[rgbpyw]/
      "rgbpyw".include?(character)
    end
  end

  def has_spaces?
    player_guess.include?(" ")
    # player_guess.chars.include? do |character|
    #   character == /[s]/
    # end
  end
end
