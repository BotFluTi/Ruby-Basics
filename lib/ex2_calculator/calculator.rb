# frozen_string_literal: true

def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def sum(numbers)
  numbers.reduce(0) { |total, number| total + number }
end

def mul(numbers)
  numbers.reduce(1) { |total, number| total * number }
end

def pow(base, exponent)
  base**exponent
end

def fact(number)
  (1..number).reduce(1) { |total, n| total * n }
end
