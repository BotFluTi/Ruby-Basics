# frozen_string_literal: true

def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def sum(numbers)
  total = 0

  numbers.each do |number|
    total += number
  end

  total
end

def mul(numbers)
  total = 1

  numbers.each do |number|
    total *= number
  end

  total
end

def pow(base, exponent)
  base**exponent
end

def fact(number)
  total = 1

  (1..number).each do |i|
    total *= i
  end

  total
end
