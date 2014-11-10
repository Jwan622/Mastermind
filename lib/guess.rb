require_relative './shuffler1'  # => true
require_relative './guess_evaluator'

class Guess
  attr_reader :user_answer
  def initialize(user_answer = gets.chomp.downcase)
    @user_answer = user_answer.downcase
  end

end
