require 'minitest/autorun'
require_relative 'namer'

class NamerTest < Minitest::Test

  def test_num_chars_short
    namer = Namer.new 'Bob'
    assert_equal 3, namer.num_chars
  end

  def test_num_chars_long
    namer = Namer.new 'Wolfeschlegelsteinhausenbergerdorff'
    assert_equal 35, namer.num_chars
  end

  def test_num_chars_empty_string
    namer = Namer.new ''
    assert_equal 0, namer.num_chars
  end

  def test_upcase_already_uppercase
    namer = Namer.new "JOE"
    assert_equal "JOE", namer.upcase
  end

  def test_upcase_lowercase
    namer = Namer.new "gladys"
    assert_equal "GLADYS", namer.upcase
  end

  def test_upcase_mixed
    namer = Namer.new "zErOcOoL"
    assert_equal "ZEROCOOL", namer.upcase
  end

  
end
