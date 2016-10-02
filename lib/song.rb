require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_hash = {}
  @@artists_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
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
    @@genres.each do |genre|
      @@genres_hash[genre] = @@genres.count(genre)
    end
    @@genres_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artists_hash[artist] = @@artists.count(artist)
    end
    @@artists_hash
  end

end
