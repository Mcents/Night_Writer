require_relative 'english_to_braille'

require 'pry'

class NightWriter

  attr_reader :input_file, :output_file, :text

  def initialize
    # @code_to_braille = code_to_braille
    @open_text =  File.open(ARGV[0], "r")
    @text = @open_text.read.chomp
    # @line_limit = line_limit
  end


#converting english input text to braille
  def code_to_braille
    # binding.pry
    content = EnglishToBraille.new
    braille = content.translate(@text)
    file_name = ARGV[1]
    temp = File.open(file_name, "w")
    temp.write(braille)
    temp.close

  end


  # def line_limit
  #   if ARGV[0].length > 41
  #     "\n"
  #   end
  #
  # end


end


@test_file = NightWriter.new
@test_file.code_to_braille
