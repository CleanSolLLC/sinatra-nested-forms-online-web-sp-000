class Pirate
  attr_reader :name, :weight, :height
  
  @@all =[]
  
  def initialize(params)
    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    @@all << self
  end
  
  def self.all
    @@all
  end
    
end