require_relative './shuffler1'  # => true
require_relative './guess_evaluator'

class Guess
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def valid_length?
    @input.length == 4
  end

  def too_short?
    @input.length < 4
  end

  def too_long?
    @input.length > 4
  end

  def is_letters?
    @input.chars.all? {|letter| letter =~ /[a-zA-Z]/}
  end

  def right_letters?
    @input.chars.all? {|letter| letter =~ (/[rgbyrp]/)}
  end
end
