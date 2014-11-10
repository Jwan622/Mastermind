class CLI
    attr_reader :command

  def initialize(instream, outstream)


  end

  end
  def play?
    command == "p"
  end


  def finished?
    command == "q" || command == "quit"

  end

  def process_initial_commands
    case

    when play?
      game = Game.new(instream, outstream, messages)
      game.play
    when instructions?
      outstream.puts messages.game_instructions
    when finished?
  end

end
