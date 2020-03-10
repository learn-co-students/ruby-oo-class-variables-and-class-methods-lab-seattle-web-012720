require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists << artist
    @@genres << genre 
  end

  def self.count
     @@count
  end

  def self.artists
    @@artists.uniq 
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # returns a hash of genres and the number of songs that have those genres
    genre_count = {}
    @@genres.each do |genero|
      if genre_count[genero]
        genre_count[genero] +=1
      else
        genre_count[genero] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artists = {}
    @@artists.each do |songs|
      if artists[songs]
        artists[songs] +=1
      else
        artists[songs] = 1
      end
    end
    artists
  end
  
    
  



end