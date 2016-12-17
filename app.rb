require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name_reverse = params[:name].reverse
    "#{@name_reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    @result = num*num
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    result = ""
    while i < num
      result += "#{@phrase}\n"
      i+=1
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @phrase = "#{@word1}" + " #{@word2}" + " #{@word3}" + " #{@word4}" + " #{@word5}" + "."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if params[:operation] == 'add'
      @result = number1 + number2
      "#{@result}"
    elsif params[:operation] == 'subtract'
      @result = number1 - number2
      "#{@result}"
    elsif params[:operation] == 'multiply'
      @result = number1 * number2
      "#{@result}"
    else params[:operation] == 'divide'
      @result = number1 / number2
      "#{@result}"
    end
  end
end
