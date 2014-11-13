gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/Shuffler1'
require_relative '../lib/game'

class GameTest < Minitest::Test
  def test_lost_is_working
    @comp_answer = "rrrr"
    @player_guess = "bbbb"
    @messages = Messages.new
    game = Game.new($stdin, $stdout, @messages)
    evaluator = GuessEvaluator.new(@player_guess, @comp_answer, @messages)
      20.times do game.check_guess(evaluator)
    assert lost?
      end
  end

  def test_answer_guess_standardization_workin_it
      player1 = Guess.new("RED")
      player2 = Guess.new("Red")
      assert_equal "r", player1.user_answer
      assert_equal "r", player2.user_answer
  end
end
