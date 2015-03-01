require_relative 'fizzbuzz'
require 'minitest/autorun'

class TestFizzBuzz < MiniTest::Test
  def setup
    @fb = FizzBuzz.new
  end

  def test_mod3_returns_fizz
    assert_equal 'Fizz', @fb.buzzoven(3) 
  end

  def test_mod5_returns_buzz
    assert_equal 'Buzz', @fb.buzzoven(5)
  end

  def test_mod3_and_mod5_returns_fizzbuzz
    assert_equal 'FizzBuzz', @fb.buzzoven(15)
  end

  def test_non_mod3_mod5_returns_original
    assert_equal 7, @fb.buzzoven(7)
  end
end
