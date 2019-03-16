require 'pry'

class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all
  end

  def add_song(song)
    song.artist = self
    @@all << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@all << song
  end

  def self.song_count
    @@all.count
  end

end
