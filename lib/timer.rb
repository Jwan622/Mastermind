require_relative 'Messages'

class Timer

  attr_accessor :start_time, :end_time

  def initialize
    @start_time = 0
    @end_time = 0
    @messages = Messages.new
  end

  def timer_start
    time_instance = Time.now
    self.start_time = time_instance
    hour = time_instance.strftime("%H").rjust(2,'0')
    minute = time_instance.strftime("%M").rjust(2,'0')
    second = time_instance.strftime("%S").rjust(2,'0')
    puts @messages.starter(hour, minute, second)
  end

  def timer_end
    time_instance = Time.now
    self.end_time = time_instance
    hour = time_instance.strftime("%H").rjust(2,'0')
    minute = time_instance.strftime("%M").rjust(2,'0')
    second = time_instance.strftime("%S").rjust(2,'0')
    puts @messages.ending_time(hour, minute, second)
  end
end
