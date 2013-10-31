class CalculationController < ApplicationController
  def home
  	end

def square
  	@the_number = params[:number].to_i

  	@answer = @the_number * @the_number
  	  end

  def sqrt
    @the_number = params[:number].to_f

    @answer = Math.sqrt(@the_number)
  end

  def pmt
  	@interest_rate = params[:interest_rate].to_f
  	@number_of_payments = params[:number_of_payments].to_f
  	@present_value = params[:present_value].to_f

  	numerator = (@present_value * @interest_rate/100/12) * ((1 + @interest_rate/100/12)**@number_of_payments)
  	denominator = ((1 + @interest_rate/100/12)**@number_of_payments) - 1

  	@payment = numerator / denominator
  end
end
