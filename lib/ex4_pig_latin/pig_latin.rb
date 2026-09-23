# frozen_string_literal: true

def translate(text)
  text.split.map { |word| translate_word(word) }.join(' ')
end

def translate_word(word)
  vowels = 'aeiou'
  index = 0

  until vowels.include?(word[index])
    if word[index, 2] == 'qu'
      index += 2
      break
    end

    index += 1
  end

  "#{word[index..]}#{word[0...index]}ay"
end
