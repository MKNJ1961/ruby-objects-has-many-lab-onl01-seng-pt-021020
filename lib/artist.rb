require_relative 'song'

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count(songs)
   @@song_count
 end

 def songs
   @songs
 end


  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(name)
    s = Song.new(name)
    s.artist = self
    self.songs << s
  end

  def self.song_count
    Song.all.length
  end

end
