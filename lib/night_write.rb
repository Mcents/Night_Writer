require './alphabet'
require 'pry'

class NightWriter

  attr_reader :text

  def initialize
    @open_text =  File.open(ARGV[0], "r")
    @text = @open_text.read.chomp
    @counter = 0
  end


  def code_to_braille
    join_letters
    file_name = ARGV[1]
    braille_write = File.open(file_name, "w")
    braille_write.write(join_letters)
    braille_write.close
  end

  def convert_letters(input)
    input.chars.map do |letter|
      ALPHABET[letter]

    end
  end
  #binding.pry


  def join_letters
    first, second, third   = [], [], []

    convert_letters(@text).each do |letter|
        first   << letter[0]
        second  << letter[1]
        third   << letter[2]


    end
    get_new_lines(first.join, second.join, third.join)
  end

  def get_new_lines(first_line, second_line, third_line)
    string = ""
    # until first_line.length == 0
    string << first_line + "\n"
    string << second_line + "\n"
    string << third_line + "\n"

  string
end


end

@test_file = NightWriter.new
@test_file.code_to_braille
