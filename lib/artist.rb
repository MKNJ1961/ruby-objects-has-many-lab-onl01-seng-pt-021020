class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
end


# require_relative 'song'
#
# class Artist
#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def self.song_count
#    @@song_count
#  end
#
#  # def songs
#  #   @songs
#  # end
#
#
#   def add_song(song)
#     song.artist = self
#     self.songs << song
#   end
#
#   def add_song_by_name(name)
#     s = Song.new(name)
#     s.artist = self
#     self.songs << s
#   end
#
#   def self.song_count
#     Song.all.length
#   end
#
# end
