module Riddle
  module Filler
    def divisor?(divisor)
      (@number % divisor).zero?
    end
  end
end
