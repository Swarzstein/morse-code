require_relative 'decoder'

def decode_character character
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
 