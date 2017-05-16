require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_to_english'
require "pry"



class TestBrailleToEnglish < Minitest::Test

  def test_can_access_engkey_from_braille
    bte = BrailleToEnglish.new
    assert_equal "a", bte.braille_to_strings(["0.", "..", ".."])
  end


end
