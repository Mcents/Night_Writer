require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'

require "pry"


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

  def test_it_can_convert_a
    a = NightWriter.new

    assert_equal [["0.", "..", ".."]], a.convert_letters("a")
  end

  def test_it_can_convert_multiple
    a = NightWriter.new
    assert_equal [["0.", "..", ".."], ["00", "0.", ".."]], a.convert_letters("af")

  end


end
