require_relative 'Messages'
require_relative 'Shuffler1'

class CLI
  attr_reader :messages, :player_guess
  def initialize(instream, outstream)
    @instream = instream
    @outstream = outstream
    @messages = Messages.new
    @input_command = ""
  end

  def start
    outstream.puts messages.intro_greeting

    loop do
      outstream.puts messages.guess_request
      @input_command = instream.gets.strip.downcase

      case
      when play?
        game = Game.new
        game.play
      when instructions?
        messages.instruction_reminder
      when finished?
        messages.quit_message
        break
      else
        messages.not_valid_input
      end

    end
    outstream.puts message_ending
  end

  private

  def finished?
    player_guess == "q" || "quit"
  end

  def play?
    player_guess == "p" || "play"
  end

  def instructions?
    player_Guess == "i" || "instructions"
  end
end
