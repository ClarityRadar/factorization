module Riddle
  # :nodoc:
  class Tuples
    include Divisable

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

    attr_reader :number

    def divisibility_count(divisor, count = 0, decomposure = number)
      return count unless divisor?(decomposure, divisor)

      divisibility_count(divisor, count + 1, decomposure / divisor)
    end
  end
end
