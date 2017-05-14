
require 'minitest/autorun'
require 'minitest/pride'
require './lib/english_to_braille'
# require "pry"


class LinkedListTest < Minitest::Test

  def test_can_access_hash
    a = EnglishToBraille.new

    assert_equal hash, a.letters.hash
  end

 def test_can_run_translate
    skip
    a = EnglishToBraille.new

    assert
  end

end
