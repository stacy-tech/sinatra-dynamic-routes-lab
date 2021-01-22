require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

  get "/square/:number" do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

  get "/say/:number/:phrase" do
    string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { string += "#{@phrase}\n" }
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @phrase = @params[:word1]+" "+@params[:word2]+" "+@params[:word3]+" "+@params[:word4]+" "+@params[:word5]+"."
    "#{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    @operation=@params[:operation]
    @operand1=@params[:number1].to_i
    @operand2=@params[:number2].to_i
    case @operation
    when "add"
      @result=@operand1+@operand2
    when "subtract"
      @result=@operand1-@operand2
    when "multiply"
      @result = @operand1*@operand2
    when "divide"
      @result=@operand1/@operand2
    end
    "#{@result}"
  end

end