gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'

class GuessEvaluatorTest < Minitest::Test

  def test_win_exact_match
    messages = Messages.new
    player_guess = "rrgb"
    game_answer = "rrgb"
    evaluation = GuessEvaluator.new(player_guess, game_answer, messages)
    evaluation.exact_match_check
    assert_equal 4, evaluation.count_red_pegs
  end

  def test_2_letters_2_red_pegs
    messages = Messages.new
    player_guess = "rrby"
    game_answer = "rrgb"
    evaluator = GuessEvaluator.new(player_guess, game_answer, messages)
    evaluator.exact_match_check
    assert_equal 2, evaluator.count_red_output
  end

  def test_2_letters_2_white_pegs_1_red_peg
    messages = Messages.new
    player_guess = "ryrb"
    game_answer  = "rrbr"
    evaluator = GuessEvaluator.new(player_guess, game_answer, messages)
    evaluator.exact_match_check
    evaluator.white_match_check
    assert_equal 2, evaluator.count_white_output
    assert_equal 1, evaluator.count_red_output
  end

  def test_3_letters_3_white_1_red_peg
    messages = Messages.new
    player_guess  = "bbry"
    game_answer   = "rbyb"
    evaluator = GuessEvaluator.new(player_guess, game_answer, messages)
    evaluator.exact_match_check
    evaluator.white_match_check
    assert_equal 3, evaluator.count_white_output
    assert_equal 1, evaluator.count_red_output
  end

  def test_0_letters_match
    messages = Messages.new
    player_guess = "rgby"
    game_answer = "pppp"
    evaluator = GuessEvaluator.new(player_guess, game_answer, messages)
    evaluator.exact_match_check
    evaluator.white_match_check
    assert_equal 0, evaluator.count_white_output
    assert_equal 0, evaluator.count_red_output
  end

  def test_white_match_check
    messages = Messages.new
    player_guess = "rrrb"
    game_answer = "rwwr"
    evaluator = GuessEvaluator.new(player_guess, game_answer, messages)
    evaluator.exact_match_check
    evaluator.white_match_check
    assert_equal 1, evaluator.count_red_output
    assert_equal 2, evaluator.count_white_output
  end
end
