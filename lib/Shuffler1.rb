class Shuffler

  attr_reader :comp_answer  # => nil

  def initialize
    @computer_sequence = []                    # => []
    @choices = ["r", "y", "w", "b", "p", "g"]  # => ["r", "y", "w", "b", "p", "g"]
    sequence                                   # => "ybgp"
  end

  def sequence
    4.times do                               # => 4
      @computer_sequence << @choices.sample  # => ["y"], ["y", "b"], ["y", "b", "g"], ["y", "b", "g", "p"]
    end                                      # => 4
    @comp_answer = @computer_sequence.join   # => "ybgp"
  end
end

computer = Shuffler.new  # => #<Shuffler:0x007fbbfc8a4098 @computer_sequence=["y", "b", "g", "p"], @choices=["r", "y", "w", "b", "p", "g"], @comp_answer="ybgp">
computer.comp_answer     # => "ybgp"
