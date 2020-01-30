require "pry"
class Song
    @@count =0
    @@genres =[]
    @@artists =[]
    def initialize(name,artist,genre)
    @name =name
    @artist =artist
    @genre =genre
    @@count+=1
    @@genres << genre
    @@artists << artist
    end
    attr_accessor :name, :artist, :genre
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq 
    end
    def self.artists
        #binding.pry
        @@artists.uniq
    end
        #binding.pry
    def self.genre_count 
        #binding.pry
        genres = @@genres
        counts = Hash.new(0)
        genres.inject(Hash.new(0)) {|total, e| total[e] += 1; total}
    end
    def self.artist_count
        artist = @@artists
        counts = Hash.new(0)
        #binding.pry
        artist.inject(Hash.new(0)) {|total, e| total[e] += 1; total} 
    end
 #@@genre.each{|index| [index=>index.count]}
 #@@genres.map {|x|[x, @@genres[x].length] }
 #@@genres.each{|x| @@genres[x] = genres.count("x")}
end