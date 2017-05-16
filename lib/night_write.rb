require_relative 'english_to_braille'

require 'pry'

class NightWriter

  attr_reader :input_file,
              :output_file,
              :text,
              :line_limit


  def initialize
    # @code_to_braille = code_to_braille
    @open_text =  File.open(ARGV[0], "r")
    @text = @open_text.read.chomp
    @line_limit = line_limit
    # @new_text = new_text

  end

#converting english input text to braille
  def code_to_braille
    content = EnglishToBraille.new
    braille = content.translate(text)
    @line_limit = braille.scan(/.{1,82}/).join("\n")
    file_name = ARGV[1]
    braille_write = File.open(file_name, "w")
    braille_write.write(@line_limit)
    braille_write.close

  end


##

  def line_block


  end


end

@test_file = NightWriter.new
@test_file.code_to_braille
