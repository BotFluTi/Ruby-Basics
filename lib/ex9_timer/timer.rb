# frozen_string_literal: true

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60

    format('%<hours>02d:%<minutes>02d:%<seconds>02d',
           hours: hours, minutes: minutes, seconds: seconds)
  end
end
