require './lib/alphabet'
require 'pry'

class EnglishToBraille

  attr_accessor :letters,
                :translate

  def initialize
    @letters = Alphabet.new
  end

  def translate(input)
    translate_each_letter = input.split("").map do |letter|
      letters.alphabet[letter]
    end

    t = translate_each_letter.transpose
    "#{t[0].join}\n" + "#{t[1].join}\n" + "#{t[2].join}"
  end

end
