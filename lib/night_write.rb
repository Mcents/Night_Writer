require_relative 'english_to_braille'
require 'pry'

class NightWriter

  attr_accessor :input_file,
                :output_file,
                :text,
                :line_limit

  def initialize
    @open_text =  File.open(ARGV[0], "r")
    @text = @open_text.read.chomp
    # @line_limit = line_limit
  end

  def code_to_braille
    content = EnglishToBraille.new
    braille = content.translate(text)
    # @line_limit = braille.scan(/.{1,82}/).join("\n")
    file_name = ARGV[1]
    braille_write = File.open(file_name, "w")
    braille_write.write(braille)
    braille_write.close
  end
end

@test_file = NightWriter.new
@test_file.code_to_braille
