def test_breaks_colors_down_to_single_letters
  player1 = Guess.new("RED")
  player2 = Guess.new("Red")
  assert_equal "r", player1.user_answer
  assert_equal "r", player2.user_answer
end


# class ValidateGuess
#   attr_accessor :valid_colors, :guess, :length
#
#   def initialize(guess, length, valid_colors)
#     self.guess = guess
#     self.valid_colors = valid_colors
#     self.length = length
#   end
#
#
#   def valid?
#     return false unless guess.length == length
#     guess.chars.all? {|char| valid_colors.include? char}
#   end
# end
#

class TestValidateGuess < Minitest:Test
  def test_correct
    ValidateGuess.new('rrrr', )
  end

  def test_incorrect
    ValidateGuess.new('rrrr', 4, ['r']).valid?
    Validate.Guess.new('rrxr', 4, ['r']).valid?
    Validate.Guess.new('rrrrr', 4, ['r']).valid?
  end
end
