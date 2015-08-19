require 'rspec'
require_relative '../lib/program.rb'


describe ".odd?" do
  it "can tell if a number is odd" do
    odds   = [3,5,7,9,11,13]
    evens  = [2,4,6,8,10]

    odds.each do |odd_n|
      expect(OddEvenPrimeGenerator.odd?(odd_n)).to eq(true)
    end

    evens.each do |even_n|
      expect(OddEvenPrimeGenerator.odd?(even_n)).to eq(false)
    end
  end
end

describe ".even?" do
  it "can tell if a number is even" do
    expect(OddEvenPrimeGenerator.even?(2)).to eq(true)
    expect(OddEvenPrimeGenerator.even?(5)).to eq(false)
  end
end

describe ".prime?" do
  it "can tell if a number is prime" do
    primes     = [2,3,11]
    not_primes = [1,4,6,8,10,46]

    primes.each do |prime_n|
      expect(OddEvenPrimeGenerator.prime?(prime_n)).to eq(true)
    end

    not_primes.each do |not_prime_n|
      expect(OddEvenPrimeGenerator.prime?(not_prime_n)).to eq(false)
    end
  end
end

describe ".generate" do
  it "knows if a variable is a number" do
    expect(5.class).to eq(Fixnum)
    expect("5".class).not_to eq(Fixnum)
    expect(5.class == Fixnum).to eq(true)
  end

  it "returns an array of 1 through n" do
    value = OddEvenPrimeGenerator.generate
    expect(value.class).to eq(Array)
    expect(value.size).to eq(5)
    # these are not accurate now that program has evolved!
    # expect(value).to eq((1..5).to_a)

    numbers = [1,2,5,77,16]
    numbers.each do |n|
      val = OddEvenPrimeGenerator.generate(n)
      expect(val.size).to eq(n)
      # expect(val).to eq((1..n).to_a)
    end
  end

  it "it keeps the number if it is prime" do
    result = ['ODD',2, 3,'EVEN', 5]
    expect(OddEvenPrimeGenerator.generate[1]).to eq(result[1])
  end

  it "it prints 'EVEN' for non-prime numbers" do
    result = ['ODD',2, 3,'EVEN', 5]
    expect(OddEvenPrimeGenerator.generate[3]).to eq(result[3])
  end


end