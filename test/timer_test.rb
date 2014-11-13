gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'lib/timer.rb'


=begin
It'd be nice to know how to stub here. I want to stub time to be a certin time. I want the time to be
5:08:09 so I can see if my rjust methods work. 
=end

class TimerTest < Minitest::Test
  def test_hour_is_in_two_digit_form
    time_instance = Time.new
    two_digit_hour = time_instance.strftime("%H").rjust(2,'0')
    assert_equal 2, two_digit_hour.length
  end

  def test_minute_is_in_two_digit_form
    time_instance = Time.now
    two_digit_minute = time_instance.strftime("%M").rjust(2,'0')
    assert_equal 2, two_digit_minute.length
  end

  def test_second_is_in_two_digit_form
    time_instance = Time.now
    two_digit_second = time_instance.strftime("%S").rjust(2,'0')
    assert_equal 2, two_digit_minute.length
  end
end



end
