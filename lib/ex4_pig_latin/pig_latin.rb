# frozen_string_literal: true

CONSONANT_CLUSTER = /\A(?:[^aeiou]*qu|[^aeiou]+)/i.freeze
WORD = /\A([^[:alpha:]]*)([[:alpha:]]+)(.*)\z/m.freeze

def translate(text)
  text.split.map { |token| translate_token(token) }.join(' ')
end

def translate_token(token)
  match = token.match(WORD)
  return token unless match

  prefix, word, suffix = match.captures
  result = translate_word(word.downcase)
  result = result.capitalize if word[0] == word[0].upcase

  "#{prefix}#{result}#{suffix}"
end

def translate_word(word)
  cluster = word[CONSONANT_CLUSTER].to_s
  "#{word[cluster.length..]}#{cluster}ay"
end
