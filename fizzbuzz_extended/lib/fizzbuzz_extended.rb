class FizzBuzzExtended
  def initialize(h)
    @hashbuzz = h
  end

  def buzzoven(n)
    @hive = ''
    @hashbuzz.each do |k, v|
      if (n % k).zero?
        @hive << "#{ v }"
      end
    end
    @hive.empty? ? n : @hive
  end

  def swarm(cycles = 50_000)
    (1..cycles).each do |n|
      puts buzzoven(n)
    end
  end
end

h = { 3 => 'Fizz', 5 => 'Buzz', 7 => 'Siiv' }
@fbe = FizzBuzzExtended.new(h)
@fbe.swarm(cycles = 21)
