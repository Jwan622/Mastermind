# cli
game = Game.newg
messager = Messager.new

while !won?
  guess = Guess.new(input from cli)
  if guess.valid_length? && guess_right_colors?
    # pass in the input to the guess evaluator
  elsif !guess.valid_too_short?
    "Thats too short"
  elsif !guess.valid_too_long
end
