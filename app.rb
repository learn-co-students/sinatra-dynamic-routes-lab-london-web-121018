require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @backward = params[:name]
    "#{@backward.reverse}"
  end

  get '/square/:number' do
    @sq_num = params[:number]
    "#{@sq_num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}"*@num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    array = [@word1, @word2, @word3, @word4, @word5]
    array.join(' ') << "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @oper = params[:operation]

      if @oper == "add"
        "#{@num1 + @num2}"

      elsif @oper == "subtract"
        "#{@num2 - @num1}"

      elsif @oper == "multiply"
        "#{@num1 * @num2}"

      elsif @oper == "divide"
        "#{@num1 / @num2}"
      end
  end

end
