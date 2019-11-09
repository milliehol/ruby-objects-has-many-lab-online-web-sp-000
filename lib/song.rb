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

  def self.artist_name(name)
   name = name.artist
  end

def self.all
   @@all
 end

 def songs
   Song.all.select {|song| song.artist == self}
 end

end
