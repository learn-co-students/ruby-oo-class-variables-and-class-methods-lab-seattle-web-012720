require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@artists = [ ]
    @@genres = [ ]

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        value = @@genres.uniq
        value
    end

    def self.genre_count
        genres = @@genres
        genres.inject(Hash.new(0)) {|total, e| total[e] += 1; total}
    end

    def self.artist_count
        artists = @@artists
        artists.inject(Hash.new(0)) {|total, e| total[e] += 1; total}
    end
end