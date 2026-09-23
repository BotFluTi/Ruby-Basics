# frozen_string_literal: true

def echo(word)
  word
end

def shout(words)
  words.upcase
end

def repeat(words, number = 2)
  result = ''

  (1..number).each do
    result += "#{words} "
  end

  result.strip
end

def start_of_word(word, number)
  result = ''

  (0...number).each do |i|
    result += word[i]
  end

  result
end

def first_word(sentence)
  sentence.split.first
end

def titleize(title)
  little_words = %w[and over the]

  words = title.split

  words.each_with_index do |word, index|
    words[index] = word.capitalize unless little_words.include?(word) && index != 0
  end

  words.join(' ')
end
