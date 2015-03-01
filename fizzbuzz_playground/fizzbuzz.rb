class FizzBuzz

  def buzzoven num
    s = ''
    s += 'Fizz' if num % 3 == 0
    s += 'Buzz' if num % 5 == 0
    (s.empty? ? num : s)
  end

end
