loop do
  puts "\nHow many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    playlist1.play(answer.to_i)
  when 'quit', 'exit'
    playlist1.print_stats
    break
  else
    puts "Please enter a number or 'quit'."
  end
end
