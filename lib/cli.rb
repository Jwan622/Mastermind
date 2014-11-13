require_relative 'Messages'
require_relative 'Shuffler1'
require_relative 'game'

class CLI
  attr_accessor :messages, :input_command, :outstream, :instream

  def initialize(instream, outstream)
    @instream = instream
    @outstream = outstream
    @messages = Messages.new
    @input_command = ""
  end

  def start
    loop do
      #how can I quit from the color selection without having to press q again to quit.
      outstream.puts messages.intro_greeting
      @input_command = instream.gets.strip.downcase
      case
      when play?
        game = Game.new(instream, outstream, messages)
        game.play
      when instructions?
        puts messages.instruction_reminder
      when finished?
        puts messages.quit_message
        break
      else
        puts messages.not_valid_input_on_first_screen
      end
    end
  end

  def finished?
    input_command == "q" || input_command == "quit"
  end

  def play?
    input_command == "p" || input_command == "play"
  end

  def instructions?
    input_command == "i" || input_command == "instructions"
  end
end
