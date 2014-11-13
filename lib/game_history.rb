class HighScoreHistory
  attr_accessor :log
  attr_reader :score, :other_player

  def initialize(other_player, score)
    @log = []
    @log.sort
  end

  def <=>(other_score)
		other_player.other_score <=> @score
	end
end
