require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_to_english'
require "pry"



class TestBrailleToEnglish < Minitest::Test

  def test_can_access_engkey_from_braille
    a = BrailleToEnglish.new
    expected = ["a"]
    actual = a.hash["0.", "..", ".."]

    assert_equal expected, actual
  end


end
