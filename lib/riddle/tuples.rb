module Riddle
  # :nodoc:
  class Tuples
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def prime_divisors
      PrimeDivisors.new(number).to_a
    end

    def to_a
      prime_divisors.map do |divisor|
        [divisor, divisibility_count(divisor)]
      end
    end

    private

    def divisibility_count(divisor)
      divisibility_count_helper(number, divisor)
    end

    def divisibility_count_helper(transitional, divisor, count = 0)
      if (transitional % divisor).zero?
        new_transitional = transitional / divisor

        divisibility_count_helper(new_transitional, divisor, count + 1)
      else
        count
      end
    end
  end
end
