require './alphabet'
require 'pry'

class NightWriter
  attr_reader :text

  def initialize
    @open_text =  File.open(ARGV[0], "r")
    @text = @open_text.read.chomp
    @braille = Alphabet.new
  end

  def code_to_braille
    join_letters
    count = join_letters.length
    file_name = ARGV[1]
    braille_write = File.open(file_name, "w")
    braille_write.write(join_letters)
    puts "Created '#{ARGV[1]}' containing #{count} characters"
    braille_write.close
  end

  def convert_letters(input)
    var = input.chars.map do |letter|
      @braille.braille[letter]
    end
    var
  end

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
    limited_lines = ""
    until first_line.length == 0
    limited_lines << first_line.slice!(0..79) + "\n"
    limited_lines << second_line.slice!(0..79) + "\n"
    limited_lines << third_line.slice!(0..79) + "\n"
    end
  limited_lines
  end

end

@test_file = NightWriter.new
@test_file.code_to_braille
