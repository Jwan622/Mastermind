require_relative 'Shuffler1'
require_relative 'Messages'
require_relative 'guess_evaluator'
require_relative 'timer'

class Game

  attr_accessor :player_guess, :comp_answer, :messages, :turn_number, :instream, :outstream, :score

  def initialize(instream, outstream, messages)
    @player_guess = ""
    @comp_answer = Shuffler.new.comp_answer
    @instream = instream
    @messages = messages
    @turn_number = 0
    @outstream = outstream
    @score = 20
  end

  def play
    timer = Timer.new
    timer.timer_start
    
    guess
    evaluator = GuessEvaluator.new(@player_guess, @comp_answer, messages)
    check_guess(evaluator)

    if quitting?
    elsif lost?
      puts messages.game_lost
    else
      puts messages.say_score(@score)
      timer.timer_end
      total_time = (timer.end_time - timer.start_time).to_i
      puts messages.game_win(total_time)
    end
  end

  def guess
    puts messages.guess_request
    self.player_guess = instream.gets.chomp.downcase #
    process_guess
  end

  def process_guess    #ask josh or rachel or someone to encapsulate this process_guess. I asked tan, lots of problems.
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

  def check_guess(evaluator)
    until evaluator.exact_match? || quitting? || lost?
      puts "in until loop"
      evaluator.exact_match_check
      evaluator.white_match_check
      self.turn_number += 1
      self.score -= 1
      puts messages.turn_number_print(turn_number)
      guess
      evaluator = GuessEvaluator.new(@player_guess, @comp_answer, messages)
      break if evaluator.exact_match?
    end
  end

  def its_not_4
    player_guess.length != 4
  end

  def quitting?
    player_guess == "quit"
  end

  def not_a_valid_guess?
    @player_guess.chars.all? do |character|
      "rgbpyw".include?(character)
    end
    # @player_guess.chars.all? do |character|
    #   character =~ /[rgybpw]/
  end

  def has_spaces?
    player_guess.include?(" ")
  end

  def lost?
    self.turn_number == 20
  end
end
