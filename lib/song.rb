class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
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
        working_hash = {}
        @@genres.each do |genre|
            if working_hash.has_key?(genre) == true
                working_hash[genre] += 1
            else
                working_hash[genre] = 1
            end
        end

        # while i < @@genres.length
        #     count = @@genres[i]
        #     if working_array.include?(count) == true
                
        #         working_hash[count] += 1
            
        #     else
                
        #         working_hash[count] = 1
        #     end
        #     i +=1
        # end
        return working_hash
    end
    def self.artist_count
        working_hash = {}
        @@artists.each do |genre|
            if working_hash.has_key?(genre) == true
                working_hash[genre] += 1
            else
                working_hash[genre] = 1
            end
        end
        return working_hash
    end
end

# # sample array
# a=["aa","bb","cc","bb","bb","cc"]

# # make the hash default to 0 so that += will work correctly
# b = Hash.new(0)

# # iterate over the array, counting duplicate entries
# a.each do |v|
#   b[v] += 1
# end

# b.each do |k, v|
#   puts "#{k} appears #{v} times"
# end