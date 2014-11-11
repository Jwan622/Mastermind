gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess'

class GuessTest < Minitest::Test

  def test_right_length
    player_guess = Guess.new("rrgb")
    assert player_guess.valid_length?
  end

  def test_too_short
    player_guess = Guess.new("rgb")
    refute player_guess.valid_length?
    assert player_guess.too_short?
  end

  def test_too_long
    player_guess = Guess.new("jalskfjadsklf")
    refute player_guess.valid_length?
    assert player_guess.too_long?
  end


  def test_right_letters
    player_guess1 = Guess.new("rgbz")
    player_guess2 = Guess.new("rpgy")
    assert player_guess2.right_letters?
    refute player_guess1.right_letters?
  end

  def test_player_guess_only_has_letters
    player1 = Guess.new("1gbr")
    player2 = Guess.new("rrgb")
    refute player1.is_letters?
    assert player2.is_letters?
  end

  def

  end
end
end
