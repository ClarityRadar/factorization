module Riddle
  # :nodoc:
  class Tuples
    include Divisable

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

    def divisibility_count(divisor, count = 0, transitional = number)
      if divisor?(transitional, divisor)
        divisibility_count(divisor, count + 1, transitional / divisor)
      else
        count
      end
    end
  end
end
