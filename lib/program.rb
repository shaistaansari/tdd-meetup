class OddEvenPrimeGenerator

  def self.generate(n = 5)
    (1..n).map do |num|
      if prime?(num)
        num
      elsif even?(num)
        'EVEN'
      else
        'ODD'
      end
    end
  end

  def self.even?(n)
    n % 2 == 0
  end

  def self.odd?(n)
    !even?(n)
  end

  def self.prime?(n)
    return false if n <= 1
    return true  if n == 2
    (2..n-1).each do |divisor|
      return false if n % divisor == 0
    end
    return true
  end


end