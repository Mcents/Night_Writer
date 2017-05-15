require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'

# require "pry"


class TestNightWrite < Minitest::Test



  def test_that_ARGV_0_is_message_txt
    expected = "message.txt"
    result = ARGV[0]
    assert_equal expected, result
  end

  def test_that_ARGV_1_is_braille_message
    expected = "braille.txt"
    result = ARGV[1]
    assert_equal expected, result
  end

  def test_that_lines_break_after_82_chars
    a = NightWriter.new
    expected = "..0..0...00.0.0.0.
    ..000...0000.000.0
    .0......0.....0..."
  end

end
