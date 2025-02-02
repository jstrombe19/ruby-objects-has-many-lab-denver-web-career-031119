require_relative './song.rb'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end

  def self.song_count
    Song.all.length
  end

end
