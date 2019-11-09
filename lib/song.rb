class Song
  attr_accessor :name, :artist

   @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.artist(name)
    artist = Artist.new(name)
  end

  def artist_name
   if @artist
     @artist.name
   else
     nil
   end
 end

def self.all
   @@all
 end

 def songs
   Song.all.select {|song| song.artist == self}
 end

end
