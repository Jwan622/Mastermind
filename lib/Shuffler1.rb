class Shuffler

  attr_reader :comp_answer                     # => nil

  def initialize
    @computer_sequence = []                    # => []
    @choices = ["r", "y", "w", "b", "p", "g"]  # => ["r", "y", "w", "b", "p", "g"]
    sequence                                   # => "yypp"
  end

  def sequence
    4.times do                               # => 4
      @computer_sequence << @choices.sample  # => ["y"], ["y", "y"], ["y", "y", "p"], ["y", "y", "p", "p"]
    end                                      # => 4
    @comp_answer = @computer_sequence.join   # => "yypp"
  end
end

computer = Shuffler.new  # => #<Shuffler:0x007f9d6206c028 @computer_sequence=["y", "y", "p", "p"], @choices=["r", "y", "w", "b", "p", "g"], @comp_answer="yypp">
computer.comp_answer     # => "yypp"
