module Riddle
  # :nodoc:
  class NumberDivisors
    include Filler

    attr_reader :number

    def initialize(number)
      @number = number
    end

    def to_a
      (1..number).select { |divisor| divisor?(divisor) }
    end

    def size
      to_a.size
    end
  end
end
