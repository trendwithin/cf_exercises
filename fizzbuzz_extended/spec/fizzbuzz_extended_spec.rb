require 'fizzbuzz_extended'
require 'minitest/autorun'

class FizzBuzzExtendedTest < Minitest::Test
  def setup
    @h = { 7 => 'Siiv'}
    @fbe = FizzBuzzExtended.new @h
  end

  def test_through_three
    expected = [1, 2, "Fizz"]
    assert_equal expected, @fbe.buzzoven(3)
  end

  def test_through_five
    expected = [1, 2, "Fizz", 4, "Buzz"]
    assert_equal expected, @fbe.buzzoven(5)
  end

  def test_through_fourteen
    expected = [1, 2, "Fizz", 4, "Buzz", "Fizz",
               "FizzBuzzSiiv", 8, "Fizz", "Buzz", 11, "Fizz", 13, "FizzBuzzSiiv",]
    assert_equal expected, @fbe.buzzoven(14)

  end
  def test_through_21
    expected = [1, 2, "Fizz", 4, "Buzz", "Fizz", "FizzBuzzSiiv", 8, "Fizz",
               "Buzz", 11, "Fizz", 13, "FizzBuzzSiiv",
               "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "FizzBuzzSiiv"]
    assert_equal expected, @fbe.buzzoven(21)
  end
end
