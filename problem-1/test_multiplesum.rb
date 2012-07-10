require 'minitest/autorun'
require './multiplesum'

class TestMultipleSum < MiniTest::Unit::TestCase
  def setup
    @multiple_sum = MultipleSum.new(10, [3,5])
  end

  def test_get_multiples
    assert_equal [3, 5, 6, 9], @multiple_sum.get_multiples
  end

  def test_multiple_sum
    assert_equal 23, @multiple_sum.sum
  end
end
