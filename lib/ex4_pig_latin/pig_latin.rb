# frozen_string_literal: true

VOWELS = %w[a e i o u].freeze

def translate(text)
  text.split.map { |token| translate_token(token) }.join(' ')
end

def translate_token(token)
  prefix, word, suffix = split_token(token)

  return token if word.empty?

  result = translate_word(word.downcase)
  result = result.capitalize if word[0] == word[0].upcase

  "#{prefix}#{result}#{suffix}"
end

def split_token(token)
  prefix = token.chars.take_while { |char| !letter?(char) }.join
  word = token[prefix.length..].chars.take_while { |char| letter?(char) }.join
  suffix = token[(prefix.length + word.length)..]

  [prefix, word, suffix]
end

def translate_word(word)
  index = 0

  while index < word.length && !VOWELS.include?(word[index])
    index += 1

    if word[index, 2] == 'qu'
      index += 2
      break
    end
  end

  index = 2 if word.start_with?('qu')

  "#{word[index..]}#{word[0...index]}ay"
end

def letter?(char)
  char.between?('a', 'z') || char.between?('A', 'Z')
end
