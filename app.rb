require 'sinatra'
require 'sinatra/cookies'

get "/" do
 @name = nil || cookies[:name]
 erb :'home'
end


post "/" do
  cookies[:name] = params["name"]
  redirect "/"
end


