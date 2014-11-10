gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/guess'

class GuessTest < Minitest::Test

  def test_downcasing_works
    guess_object = Guess.new("RRGB")
    assert_equal "rrgb", guess_object.user_answer
  end

  def test_right_length
    player_guess = Guess.new("rrgb")
    assert_equal 4, player_guess.user_answer.size
  end

  def test_too_short
    player_guess = Guess.new("rgb")
    refute_equal 4, player_guess.user_answer.length
  end

  def test_right_letters
    player_guess = Guess.new("rgbz")
    player_guess_array = player_guess.user_answer.chars
    player_guess_check = player_guess_array.all? {|letter| letter == (/[rgbyrp]/)}
    refute player_guess_check, "wrong letters"
  end

  def test_player_guess_is_a_string
    player = Guess.new
    player_guess = player.user_answer
    assert_equal String, player_guess.class, "player_guess is not in string form"
  end

end
