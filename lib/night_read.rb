require 'pry'
require './alphabet'
class NightReader

  attr_accessor :text_braille, :braille

  def initialize
    @open_text_braille =  File.open(ARGV[0], "r")
    @text_braille = @open_text_braille.read.chomp
    @braille = Alphabet.new
  end


  def split_to_array(input)
    break_text = input.split
    split_character = break_text.map do |characters|
      characters.split("")
    end
    split_character

  end

  def output_to_english
    top, middle, bottom = split_to_array(@text_braille)
    result = []

    until top.empty?
      result << [top.shift(2).join, middle.shift(2).join, bottom.shift(2).join]
    end

    @final_english =  result.map do |word|
      whole_word = []
        whole_word.join << braille.output_english(word)
    end
    code_to_english
  end


  def code_to_english
    count2 = @final_english.length
    file_name = ARGV[1]
    english_write = File.open(file_name, "w")
    english_write.write(@final_english.join)
    puts "Created '#{ARGV[1]}' containing #{count2} characters"
    english_write.close
  end


end
@test_file2 = NightReader.new
@test_file2.output_to_english
