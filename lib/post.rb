class Song
  attr_accessor :name, :author

   @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def author_name
   if @author
     @author.name
   else
     nil
   end
 end

def self.all
   @@all
 end


end