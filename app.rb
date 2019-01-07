require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do 
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase_list = ""
    params[:number].to_i.times do 
       @phrase_list += params[:phrase]
    end
    "#{@phrase_list}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = ""
    params.each do |param, word|
      @string += word + " "
    end
    "#{@string.slice(0..-2) + "."}"
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'multiply'
      "{#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "{#{params[:number1].to_i / params[:number2].to_i}"
    when 'add'
      "{#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "{#{params[:number2].to_i - params[:number1].to_i}"
    
    end
  end
end