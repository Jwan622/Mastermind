class HighScoreHistory
  attr_accessor :log

  def initialize(score)
    @log = []
    @log.sort
  end

  def <=>
    
  end
end
