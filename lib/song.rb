class Song
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.artist(name)
    artist = Artist.new(name)
    song.artist = self
  end

  def add_song_by_name(name)
   song = Song.new(name)
   @songs << song
   song.artist = self
   @@song_count += 1
  end

def self.all
   @@all
 end

 def songs
   Song.all.select {|song| song.artist == self}
 end

end
