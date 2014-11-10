gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/guess'
require_relative '../lib/Shuffler1'

class GuessEvaluatorTest < Minitest::Test

  def test_win_exact_match
    player_guess = "rrgb"
    game_answer = "rrgb"
    player_guess == game_answer
  end
end
