# frozen_string_literal: true

def measure(times = 1)
  start_time = Time.now

  times.times do
    yield
  end

  end_time = Time.now

  (end_time - start_time) / times
end
