require 'test_helper'
#require 'mini_test_practice'

class MiniTestPracticeTest < Minitest::Test
  def setup
    @main = ::MiniTestPractice::Main.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_odd?
    refute @main.odd?(-10000), '-10000 is not odd'
    refute @main.odd?(-2),     '-2 is odd'
    assert @main.odd?(-1),     '-1 is odd'
    refute @main.odd?(0),      '0 is not odd'
    assert @main.odd?(1),      '1 is odd'
    refute @main.odd?(2),      '2 is not odd'
    refute @main.odd?(10000),  '10000 is not odd'
  end
end
