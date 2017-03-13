module Riddle
  # :nodoc:
  module Filler
    def divisor?(divisor)
      (@number % divisor).zero?
    end
  end
end
