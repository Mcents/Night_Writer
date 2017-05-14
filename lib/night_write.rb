require_relative 'english_to_braille'
require 'pry'
class NightWriter

  attr_reader :input_file, :output_file

  def initialize

  end

  input_file = ARGV[0]
  output_file = ARGV[1]

#converting english input text to braille
  def code_to_braille
    content = EnglishToBraille.new
    braille = content.translate(input)
  end

#taking braille content to output file
  # def braille_to_file
  #   content
  # end

binding.pry
end
