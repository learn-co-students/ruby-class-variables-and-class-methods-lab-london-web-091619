class Song
attr_accessor :name, :artist, :genre

@@count = []
@@genres = []
@@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self
        @@artists << self
    end

    def self.count
        @@count.count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count(genres, count)
        Hash = {["key"][value]}
        genres.each do |genre|
            Hash["key"] << genre
            count.each do |count|
                Hash["key"][count] << count
            end    
        end
        return Hash
    end

end