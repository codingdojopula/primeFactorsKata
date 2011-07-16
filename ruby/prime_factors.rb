module PrimeFactors
  def self.of( number )
    factors, divisor = [], 1
    while number > 1 and divisor += 1
      factors << divisor and number /= divisor while number % divisor == 0
      divisor = number - 1 if divisor > Math.sqrt( number )
    end
    factors
  end
end