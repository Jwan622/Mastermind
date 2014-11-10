require_relative './shuffler1'  # => true
require_relative './guess_evaluator'

class Guess
  attr_reader :user_answer
  def initialize(user_answer = gets.chomp.downcase)
    @user_answer = user_answer.downcase
    loop do
      until answer_correct?
      case @user_answer
      when @user_answer = "Red", "RED", "R"
        @user_answer = "r"
      when @user_answer = "Yellow", "YELLOW", "Y"
        @user_answer = "y"
      when @user_answer = "Green", "GREEN", "G"
          @user_answer = "g"
      when @user_answer = "Purple", "PURPLE", "P"
          @user_answer = "p"
      when @user_answer = "Blue", "BLUE", "B"
          @user_answer = "b"
      when @user_answer = "White", "WHITE", "W"
        @user_answer = "w"
      else
        puts "I don't know what you mean, please give me a color."
      end
    end
  end
end
end
