require "sinatra"
require "sinatra/reloader"

# get "/" do
#   return "Hello World"
# end
#
# get "/oh_hello" do
#   return "Hello Kevin"
# end
#
# get "/coin_toss" do
#   return ["heads", "Tails"].sample
# end
#
# get "/dice_roll" do
#   ['1','2','3','4','5','6'].sample
#   #(1..6).to_a.sample.to_s
# end
#
# get "/h1/:firstname/:lastname" do
#   return "Hi there, #{params[:firstname]}
#   #{params[:lastname]}"
# end
#
# get "/double/:num" do
#   "#{params[:num].to_i * 2}"
# end
#
# # VERB (GET) + PATH(everything after /) = ROUTE
# get '/magic8ball/:question' do
#   responses = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
#      "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
#      "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
#      "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
#      "Don't count on it", "My reply is no", "My sources say no",
#      "Outlook not so good", "Very doubtful"]
#
#   return "#{params[:question]}? #{responses.sample}"
# end


get "/" do
  "99 bottles of beer on the wall. <a href='/bottles/98'>Take one Down</a>"
end
