require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      
      erb :root
    end
    
    get '/new' do
      
      erb :'/pirates/new'
    end
    
    post '/pirates' do
      
      @pirate = Pirate.new(params)
      
      params[:pirate][:ships].each do |attributes|
        Ship.new(attributes)
      end
      
      @ship = Ship.all
      #binding.pry 

      erb :'/pirates/show' 
    end
    
  end
end
