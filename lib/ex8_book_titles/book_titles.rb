# frozen_string_literal: true

class Book
  attr_reader :title

  def title=(title)
    @title = format_title(title)
  end

  private

  def format_title(title)
    little_words = %w[a an and in of the]

    title.split.map.with_index do |word, index|
      if index.zero? || word == 'i' || !little_words.include?(word)
        word.capitalize
      else
        word
      end
    end.join(' ')
  end
end
