require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @par = params[:phrase]
    @number = params[:number].to_i
    "#{@par*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] +" "+ params[:word2] +" "+ params[:word3] +" "+ params[:word4] +" "+ params[:word5]
    "#{@phrase}."
  end

  get '/:operation/:num1/:num2' do
    @result = params[:num1]

    if params[:operation] == "add"
      "#{params[:num1].to_i + params[:num2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:num1].to_i * params[:num2].to_i}"
    elsif params[:operation] == "divide"
      "#{params[:num1].to_i / params[:num2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:num1].to_i - params[:num2].to_i}"
    end
  end

end