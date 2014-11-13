gem 'minitest'
require './lib/cli'
require 'minitest/autorun'
require 'minitest/pride'

class TestCLI < Minitest::Test
  def test_quit_when_type_q
    cli = CLI.new($stdin, $stdout)
    cli.input_command = "q"
    assert cli.finished?
    refute cli.play?
  end

  def test_quit_when_type_quit
    cli = CLI.new($stdin, $stdout)
    cli.input_command = "quit"
    assert cli.finished?
    refute cli.play?
  end

  def test_play_when_type_p
    cli = CLI.new($stdin, $stdout)
    cli.input_command = "p"
    assert cli.play?
    refute cli.finished?
  end

  def test_play_when_type_play
    cli = CLI.new($stdin, $stdout)
    cli.input_command = "play"
    assert cli.play?
    refute cli.finished?
  end

end
