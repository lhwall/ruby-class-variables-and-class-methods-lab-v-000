class Song 
  attr_accessor :artist, :genre, :name 
 
  @@count = 0 
  
  @@genres = []
  
  def initialize
    @@count +=1 
    @@genres << self.genre
    
  end
  
  def count
    @@count
  end 
  
  def genres 
    genres_array = @@genres.each do |genre|
      if genres_array.contains?(genre) == false 
        genres_array << genre 
      end
    end 
  end
  
end