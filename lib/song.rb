class Song
  attr_reader :name, :artist, :genre

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
    @@count += 1
    # @@artists |= [artist]
    # the tests want duplicates to be removed in the getter method
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
    @@genres.each_with_object({}) do |genre, genre_count|
      genre_count[genre] ||= 0

      genre_count[genre] += 1
      genre_count
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_count|
      artist_count[artist] ||= 0

      artist_count[artist] += 1
      artist_count
    end
  end
end
