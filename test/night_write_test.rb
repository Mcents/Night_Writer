require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require "pry"
class TestNightWrite < Minitest::Test
### ARGV tests and basic instantation testing
  def test_if_class_exists
    a = NightWriter.new
    assert_instance_of NightWriter, a
  end
  def test_that_ARGV_0_is_message_txt
    expected = "message.txt"
    result   = ARGV[0]
    assert_equal expected, result
  end
  def test_that_ARGV_1_is_braille_message
    expected = "braille.txt"
    result   = ARGV[1]
    assert_equal expected, result
  end
### below are the translating to braille tests
  def test_it_can_convert_letter
    a = NightWriter.new
    assert_equal [["0.", "..", ".."]], a.convert_letters("a")
  end
  def test_it_can_convert_capital_letter
    a = NightWriter.new
    assert_equal [["..0.", "....", ".0.."]], a.convert_letters("A")
  end
  def test_it_can_convert_multiple_letters
    a = NightWriter.new
    assert_equal [["0.", "..", ".."], ["00", "0.", ".."]], a.convert_letters("af")
  end
  def test_can_print_punctuation
    a = NightWriter.new
    assert_equal [["..", "00", "0."]], a.convert_letters("!")
  end
  def test_it_can_print_upcase_and_downcase_simultaneously
    a = NightWriter.new
    assert_equal [["..0.", "....", ".0.."], ["0.", "..", ".."]], a.convert_letters("Aa")
  end
  def test_it_can_print_numbers
    a = NightWriter.new
    assert_equal [[".0", ".0", "00"], ["0.", "..", ".."]], a.convert_letters("#1")
  end
end
