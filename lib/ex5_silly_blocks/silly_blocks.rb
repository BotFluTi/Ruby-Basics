# frozen_string_literal: true

def reverser
  words = yield.split

  words.map(&:reverse).join(' ')
end

def adder(number = 1)
  yield + number
end

def repeater(number = 1, &block)
  number.times(&block)
end
