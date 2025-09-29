require "gossip"
class ApplicationController < Sinatra::Base
  get "/gossips/new/" do
  erb :new_gossip
  end
  post '/gossips/new/' do
  Gossip.new(params["auteur"], params["contenu"]).save
  puts "Genial on a donc : #{params["auteur"]} qui dit #{params["contenu"]}"
  redirect '/'
  end
  get '/' do
  erb :index, locals: {gossips: Gossip.all}
  end
  get '/gossips/:id/' do
  id = params["id"].to_i
  potin = Gossip.find(id)
  if potin 
    erb :show, locals: {gossip: potin, id: id}
  else
    "PAS DE POTIN, MEIDE"
  end
  end
end