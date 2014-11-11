def test_breaks_colors_down_to_single_letters
  player1 = Guess.new("RED")
  player2 = Guess.new("Red")
  assert_equal "r", player1.user_answer
  assert_equal "r", player2.user_answer
end
