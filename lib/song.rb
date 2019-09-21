class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@count = 0
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_count = @@genres.each_with_object({}) { |genre, obj| obj[genre] = (obj[genre] || 0) + 1 }
  end

  def self.artist_count
    artist_count = @@artists.each_with_object({}) { |artist, obj| obj[artist] = (obj[artist] || 0) + 1 }
  end
end
