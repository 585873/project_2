require 'sinatra'
require 'sinatra/reloader'

# get "/" do
#   @num_bottles = 99
#   erb :index
# end
#
# get "/bottles/:num" do
#   @num_bottles = params[:num].to_i
#   erb :index
# end
# names = ["bobert", "tom", "missy", "kristy"]
# get "/" do
#   @names = names
#   erb :index
# end
#
# POST /animals
# DELETE /animal/1
# PUT /homework/1
# POST /wdi15
# GET /wdi14
# PATCH /animal/3
# PATCH /homework/32/assignment/3
names = ["Mario", "Yoshi", "Bowser"]
get "/names" do
  @names = names
  erb :index
end

   post "/names" do
     names.push(params[:student_name])
     redirect "names"
   end
