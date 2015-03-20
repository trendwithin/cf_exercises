class FizzBuzzExtended
  def initialize(h)
    @hashbuzz = h
    @hive = []
  end

  def buzzoven(cycles = 50_000)
    @hashbuzz.each do |k, v|
      (1..cycles).each do |n|
        if (n % k).zero?
          @hive << "FizzBuzz#{ v }"
        elsif (n % 15).zero?
          @hive << "FizzBuzz"
        elsif (n % 5).zero?
          @hive << "Buzz"
        elsif (n % 3).zero?
          @hive << "Fizz"
        else
          @hive << n
        end
      end
    end
    @hive
  end

  def swarm
    @hive.each { |e| puts "#{e}\n" }
  end
end

