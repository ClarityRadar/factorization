module Riddle
  class PrimeDivisors
    attr_reader :number, :divisors

    def initialize(number)
      @number   = number
      @divisors = NumberDivisors.new(number).to_a
    end

    def to_a
      divisors.select do |divisor|
        divisor_divisors = NumberDivisors.new(divisor)
        divisor_divisors.size == 2
      end
    end
  end
end
