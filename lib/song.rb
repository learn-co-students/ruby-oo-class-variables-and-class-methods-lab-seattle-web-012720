require 'pry'

class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        @@all << self
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
        create_hash = @@genres.group_by{ |v| v }
        create_hash.each{ |k, v| create_hash[k] = v.length }
    end

    def self.artist_count
       create_hash = @@artists.group_by{ |v| v }
       create_hash.each{ |k, v| create_hash[k] = v.length }

    end

end

