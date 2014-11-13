gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/game'
require_relative '../lib/Shuffler1'
require_relative '../lib/CLI'

class IntegrationTest < Minitest::Test
  def test_functionality_start_leads_to_turn_number
    CLI = CLI.new($stdin, $stdout)
    @comp_answer = Shuffler.new
    game = Game.new($stdin, $stdout, messages)
    game.player_guess = "rrrr"
    @input_command = "p"
    CLI.start
    assert_equal 1, game.turn_number
  end
end
