require_relative 'config/environment'

class App < Sinatra::Base

get '/reversename/:name' do
  @name = params[:name]
  "#{@name.reverse}"
end
get "/square/:number" do
  @num = params[:number].to_i
  "#{@num * @num}"
end

get '/say/:number/:phrase' do
  @number = params[:number].to_i
  @phrase = params[:phrase]
  sentence = ""
  @number.times do
    sentence += @phrase + "\n"
  end
  sentence
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:num1/:num2' do
   @operation = params[:operation]
   @num1 = params[:num1].to_i
   @num2 = params[:num2].to_i
   if @operation == 'add'
     "#{@num1 + @num2}"
   elsif @operation == 'subtract'
     "#{@num1 - @num2}"
   elsif @operation == 'multiply'
     "#{@num1 * @num2}"
   elsif @operation == 'divide'
     "#{@num1 / @num2}"
   end
 end

end
