
class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@count = 0
  @@artist = []
  @@genres = []
  puts @@genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    @@count +=1
    @@artist << artist
    @@genres << genre
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artists_count
    artists_count = {}
    @@artist.each do |artist|
      if artists_count[artist]
        artists_count[artist] += 1
      else
        artists_count[artist] = 1
      end
    end
    artists_count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artist.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.all
    @@all
  end
end

first_song = Song.new("song1", "artist1", "genre1")

second_song = Song.new("song2", "artist2", "genre2")

third_song = Song.new("song3", "artist3", "genre2")

fourth_song = Song.new("song4", "artist4", "genre2")

sixth_song = Song.new("song5", "artist5", "genre5")


puts Song.artists
puts Song.count
puts "I have these types of genres in my Songs #{Song.genres}"
puts Song.genre_count
puts Song.artists_count