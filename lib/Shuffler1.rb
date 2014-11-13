class Shuffler

  attr_reader :comp_answer

  def initialize
    @computer_sequence = []
    @choices = ["r", "y", "w", "b", "p", "g"]
    sequence
  end

  def sequence
    4.times do
      @computer_sequence << @choices.sample
    end
    @comp_answer = @computer_sequence.join
  end
end

computer = Shuffler.new
computer.comp_answer
