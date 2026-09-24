# frozen_string_literal: true

class Temperature
  def initialize(options)
    raise ArgumentError, 'Provide either :c or :f' unless options.is_a?(Hash) && (options.key?(:c) ^ options.key?(:f))
    # Checks only if at least one key is present
    # raise ArgumentError, 'Provide either :c or :f' unless options.key?(:c) || options.key?(:f)

    @celsius = options[:c]
    @fahrenheit = options[:f]
  end

  def in_celsius
    return @celsius unless @celsius.nil?

    self.class.ftoc(@fahrenheit)
  end

  def in_fahrenheit
    return @fahrenheit unless @fahrenheit.nil?

    self.class.ctof(@celsius)
  end

  def self.ftoc(degrees)
    (degrees - 32) * 5.0 / 9.0
  end

  def self.ctof(degrees)
    (degrees * 9.0 / 5.0) + 32
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
