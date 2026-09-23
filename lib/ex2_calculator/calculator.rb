# frozen_string_literal: true

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
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

def pow(a, b)
  a**b
end

def fact(number)
  total = 1

  (1..number).each do |i|
    total *= i
  end

  total
end
