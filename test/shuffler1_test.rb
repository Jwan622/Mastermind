gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/shuffler1'

class ShufflerTest < Minitest::Test
  def test_has_4_elements
    answer = Shuffler.new
    assert_equal 4, answer.comp_answer.length
  end

  def test_randomizes_4_elements
    answer = Shuffler.new
    answer2 = Shuffler.new
    answer3 = Shuffler.new
    refute answer.comp_answer == answer2.comp_answer || answer.comp_answer == answer3.comp_answer || answer2.comp_answer == answer3.comp_answer
  end

  def test_is_a_string
    answer = Shuffler.new
    game_answer = answer.comp_answer
    assert_equal String, game_answer.class
  end

  def test_sequence_gets_called_auto_when_creating_new_Shuffler
    computer = Minitest::Mock.new
    computer.expect(:sequence, [])
    computer1 = Shuffler.new
    computer.verify
  end
end
