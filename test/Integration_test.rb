gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/game'
require_relative '../lib/Shuffler1'
require_relative '../lib/CLI'
require_relative '../lib/Messages'

class IntegrationTest < Minitest::Test
  def test_functionality_start_leads_to_turn_number
    cli = CLI.new
    messages = Messages.new
    game = Game.new(messages)
    @comp_answer = Shuffler.new
    game.player_guess = StringIO.new("rrrr")
    @input_command = StringIO.new("p")
    cli.start
    assert_equal 1, game.turn_number
  end

end
