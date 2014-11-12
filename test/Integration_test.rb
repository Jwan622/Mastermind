gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/guess'
require_relative '../lib/Shuffler1'
require_relative '../lib/CLI'

class IntegrationTest < Minitest::Test
  def test_CLI_start_leads_to_play_being_called
    

  end
end
