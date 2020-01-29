class Song
    attr_accessor :name, :artist, :genre

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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @genre_hash = {}
        @@genres.each {|genre_type|
            if !@genre_hash[genre_type]
                @genre_hash[genre_type] = 1
            else
                @genre_hash[genre_type] += 1
            end
        }
        @genre_hash
    end

    def self.artist_count
        @artist_hash = {}
        @@artists.each {|who|
            if !@artist_hash[who]
                @artist_hash[who] = 1
            else
                @artist_hash[who] += 1
            end
        }
        @artist_hash
    end

end
