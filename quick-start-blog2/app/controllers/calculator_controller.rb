class CalculatorController < ApplicationController
  def main
  end

  def result
    @fristNum = params[:num1].to_i
    @secondNum = params[:num2].to_i
    @resultNum = @fristNum + @secondNum
  end

  def plus
    @fristNum = params[:num1].to_i
    @secondNum = params[:num2].to_i
    @resultNum = @fristNum + @secondNum
  end
end
