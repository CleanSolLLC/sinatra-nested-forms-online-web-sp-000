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
      
      params.each do |a|
        binding.pry
        
      end


      erb :'/pirates/show' 
    end
    
  end
end
