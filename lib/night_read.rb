require 'pry'
class NightReader

  def initialize
    @open_text_braille =  File.open(ARGV[0], "r")
    @text_braille = @open_text_braille.read.chomp
  end


  def code_to_english

    file_name = ARGV[1]
    english_write = File.open(file_name, "w")
    english_write.write(convert_braille)
    english_write.close
  end

  def string_to_array
    input_braille.chars.to_a
  end

  def convert_braille(input_braille)

  end


  end
  binding.pry
