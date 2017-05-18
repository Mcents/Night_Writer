require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_read'
require "pry"

class TestNightRead < Minitest::Test

  def test_if_nightread_exists
    a = NightReader.new

    assert_instance_of NightReader, a
  end

  def test_ARGV0_file_exists
    assert true, File.exists?(ARGV[0])
  end

  def test_ARGV1_file_exists
    assert true, File.exists?(ARGV[1])
  end


  def test_can_split_braille_to_array
    a = NightReader.new

    assert_equal [["0", ".", ".", ".", ".", "."]], a.split_to_array("0.....")
  end

  def test_can_split_multiple_braille_to_array
    a = NightReader.new

    assert_equal [["0", ".", ".", ".", ".", ".", "0", "0", ".", ".", ".", "."]], a.split_to_array("0.....00....")
  end

end
