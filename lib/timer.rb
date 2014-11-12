require_relative 'Messages'

class Timer

  attr_accessor :start_time, :end_time

  def initialize
    @start_time = 0
    @end_time = 0
    @messages = Messages.new
  end

  def timer_start
    self.start_time = Time.new
    puts @messages.starter(start_time)
  end

  def timer_end
    self.end_time = Time.new
  end

end
