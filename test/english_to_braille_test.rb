
require 'minitest/autorun'
require 'minitest/pride'
require './lib/english_to_braille'
require "pry"


class TestEnglishToBraille < Minitest::Test

  def test_can_access_a_keys_value
    a = EnglishToBraille.new
    expected = ["0.", "..", ".."]
    actual = a.letters.hash["a"]
    assert_equal expected, actual
  end

  def test_can_access_value_of_a_1
    a = EnglishToBraille.new
    expected = "0."
    actual = a.letters.hash["a"][0]
    assert_equal expected, actual
  end

  def test_can_translate_to_lowercase_braille
    a = EnglishToBraille.new
    expected = "0.\n..\n.."
    actual = a.translate("a")
    assert_equal expected, actual
  end

  def test_can_translate_to_uppercase_braille
    a = EnglishToBraille.new
    expected = "..0.\n....\n.0.."
    actual = a.translate("A")
    assert_equal expected, actual
  end

end
