require 'pry'

class Song 
  attr_reader :artist, :genre, :name 
 
  @@count = 0 
  
  @@genres = []
  
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count +=1 
    @@genres << self.genre
    @@artists << self.artist
    
  end
  
  def self.count
    @@count
  end 

  
  def self.genre_count 
    genres_array = @@genres.each do |genre|
      if @@genres.include?(genre) == false 
        genres_array << genre 
      end
    end 
    genres_array
  end
  
  def self.artists
    artists_array = @@artists.each do |artist|
      if @@artists.include?(artist) == false 
        artists_array << artist 
      end
    end 
    artists_array
    binding.pry
  end
  
end

Song.artists