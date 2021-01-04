require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(song_title)
    @name = song_title
    save
  end

  def save
    @@all << self
  end

  def artist_name
    if self.artist == nil
      artist = nil
    else
      artist = self.artist.name
    end

    artist
  end

  def self.all
    @@all
  end

end