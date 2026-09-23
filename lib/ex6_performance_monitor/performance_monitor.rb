# frozen_string_literal: true

def measure(times = 1, &block)
  start_time = Time.now

  times.times(&block)

  end_time = Time.now

  (end_time - start_time) / times
end
