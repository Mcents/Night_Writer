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
      letters.hash[letter]
    end
    t = translate_each_letter.transpose
    counter = 0
    array = []
    translate_each_letter.map do |letter|
      if letter.first.length + counter > 80
        array << ["\n", "\n", "\n"]
        array << letter
        counter = 0
      else
        counter += letter.first.length
        array << letter
        end
      end
      binding.pry
      b = array.transpose
    "#{b[0].join}\n" + "#{b[1].join}\n" + "#{b[2].join}"

  end

end
