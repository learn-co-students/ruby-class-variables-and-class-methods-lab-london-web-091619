require 'pry'
class Song
attr_reader :name, :genre, :artist


@@count=0
@@artists=[]
@@genres=[]
@@array_with_full=[]
@@hash_genre_count={}
@@artist_genre_count={}
def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
@@count+=1
@@artists<<artist
@@genres<<genre
@@array_with_full<<{name: name, artist: artist, genre: genre}
puts @@array_with_full
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
@@genres.each do|item|
    if @@hash_genre_count[item]
        @@hash_genre_count[item]+=1
    else
        @@hash_genre_count[item]=1
    end
end
@@hash_genre_count
end

def self.artist_count
    @@artists.each do|item|
        if @@artist_genre_count[item]
            @@artist_genre_count[item]+=1
        else
            @@artist_genre_count[item]=1
        end
    end
    @@artist_genre_count
    end


end

