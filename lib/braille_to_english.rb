require './lib/alphabet'
require 'pry'


class BrailleToEnglish

  def braille_to_strings(input)
    joined = input.join
    split_braille_1 = joined.split("\n")
    split_to_letters(braille_to_strings)
  end

  def split_to_letters(split_braille_1)
    results = split_braille_1[0].length / 2
    



  end

end
