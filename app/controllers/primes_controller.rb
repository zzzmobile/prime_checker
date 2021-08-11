class PrimesController < ApplicationController
  def index
  end

  def create
    number = params['number']
    
    if prime?(number.to_i) ? 
      @result = number.to_s + ' is a prime.'
    else
      @result = number.to_s + ' is not a prime.'
    end

    redirect_to primes_path, flash: { notice: @result }
  end

  private

  # check prime or not
  def prime?(n)
    return false if n <= 1
      
    return false if (2...n).any? { |i| n % i  == 0}

    true
  end
end
