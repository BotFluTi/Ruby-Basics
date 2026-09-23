# frozen_string_literal: true

class Temperature
  def initialize(options)
    @celsius = options[:c]
    @fahrenheit = options[:f]
  end

  def in_celsius
    return @celsius if @celsius

    (@fahrenheit - 32) * 5.0 / 9.0
  end

  def in_fahrenheit
    return @fahrenheit if @fahrenheit

    (@celsius * 9.0 / 5.0) + 32
  end

  def self.from_celsius(degrees)
    new(c: degrees)
  end

  def self.from_fahrenheit(degrees)
    new(f: degrees)
  end
end

require_relative 'subclasses/celsius'
require_relative 'subclasses/fahrenheit'
