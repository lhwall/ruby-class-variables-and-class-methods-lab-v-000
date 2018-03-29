class Song 
  attr_accessor :artist, :genre, :name 
 
  @@count = 0 
  
  def initialize
    @@count +=1 
  end
  
end