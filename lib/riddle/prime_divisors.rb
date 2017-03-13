module Riddle
  # :nodoc:
  class PrimeDivisors
    include Divisable

    attr_reader :number

    def initialize(number)
      @number = number
    end

    def to_a
      divisors(number).select { |divisor| divisors(divisor).size == 2 }
    end
  end
end
