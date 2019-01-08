require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number].to_i
    erb :squarenumber
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # accepts five words and returns a string containing all five words
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    # @words = (@word1 @word2 @word3 @word4 @word5 + '.').to_s
    erb :saywords
  end


  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    # @op2 = params[:subtract]
    # @op3 = params[:multiply]
    # @op4 = params[:divide]
    # @add = @number1 + @number2
    # @subtract =@number1 - @number2
    # @multiply =@number1 * @number2
    # @divide =@number1 / @number2
    # binding.pry
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    erb :op

  end

end
