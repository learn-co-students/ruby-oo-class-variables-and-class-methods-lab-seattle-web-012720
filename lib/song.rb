require 'pry'

class Song 
    attr_accessor :name, :artist, :genre
    #how was bank_account initialized?
    @@count = 0
    @@artists = [] 
    @@genres = []  

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre 

        @@count += 1 
        @@artists.push(@artist)
        @@genres.push(@genre)
    end 

    def name 
        @name 
    end 

    def artist
        @artist
    end 

    def genre
        @genre
    end 

    def self.count 
        @@count 
    end 

    def self.artists
        # binding.pry 
        @@uniq_artists = @@artists.uniq
    end 

    def self.genres
        @@uniq_genres = @@genres.uniq
    end 

    def self.genre_count 
        @@genres.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
    end 

    def self.artist_count 
        @@artists.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
    end 

end 