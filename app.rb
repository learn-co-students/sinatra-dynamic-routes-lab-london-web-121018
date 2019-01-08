require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    name = params[:name]
    "#{name.reverse}"
  end

  get "/square/:number" do
    number = params[:number].to_i

    (number * number).to_s
  end

  get "/say/:number/:phrase" do
    parrot = []

    params[:number].to_i.times {|i| parrot << params[:phrase]}
    parrot
    #binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end

  get '/:operation/:number1/:number2' do
    n1, n2 = params[:number1].to_i, params[:number2].to_i
    opr = params[:operation]
    result = nil

    case opr
    when "add"
      result = (n1 + n2)
    when "subtract"
      result = (n1 - n2)
    when "multiply"
      result = (n1 * n2)
    when "divide"
      result = (n1 / n2)
    end
    
    result.to_s
  end
end