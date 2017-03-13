module Riddle
  # :nodoc:
  module Divisable
    def divisor?(number, divisor)
      (number % divisor).zero?
    end

    private

    def divisors(integer)
      NumberDivisors.new(integer).to_a
    end
  end
end
