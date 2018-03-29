class Song 
  attr_reader :artist, :genre, :name 
 
  @@count = 0 
  
  @@genres = []
  
  @@artists = []
  
  def initialize(name, artist, genre)
    name = name
    artist = artist
    self.genre = genre
    
    @@count +=1 
    @@genres << self.genre
    @@artists << self.artist
    
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
  
  def artists 
    artists_array = @@artists.each do |artist|
      if artists_array.contains?(artist) == false 
        artists_array << artist 
      end
    end 
  end
  
end