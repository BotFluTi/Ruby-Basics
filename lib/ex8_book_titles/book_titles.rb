# frozen_string_literal: true

class Book
  LOWERCASE_WORDS = %w[a an and in of the].freeze

  attr_reader :title

  def title=(title)
    @title = format_title(title)
  end

  private

  def format_title(title)
    title.split.map.with_index do |word, index|
      if index.zero? || word == 'i' || !LOWERCASE_WORDS.include?(word)
        word.capitalize
      else
        word
      end
    end.join(' ')
  end
end
