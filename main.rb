require_relative 'decoder'

def decode_character(character)
  ALL_MORSE_CODE[character]
end

def decode_word(word)
  word_arr = word.split
  compound = ''

  word_arr.each do |char|
    compound += decode_character(char)
  end

  compound
end

def decode_message(message)
  words = message.split('   ')
  decoded_message = ''
  words.each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
