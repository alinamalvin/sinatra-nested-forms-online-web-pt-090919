require './environment'

module FormsLab
  class App < Sinatra::Base

   get '/' do
  erb :new
end

post '/pirate' do
  @pirate = Pirate.new(params[:pirate])
 
  params[:pirate][:ships].each do |details|
    Ship.new(details)
  end
 
  @ships = Ship.all
 
  erb :pirate
  end
end
