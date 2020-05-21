# require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
# binding.pry
  def self.new_by_filename(filename)
    # creat new instance of a song from the file that's passed
    # associates new song instance with the artist from the filename
    new_song = filename.split(" - ")
  end

  def artist_name=(name)
    artist = Artist.new(name)
    artist.add_song(self)
  end

end

jigga = Song.new("Jigga That N")
carter = Song.new("S dot Carter")
world = Song.new("Cole World")
champ = Song.new("Grand Champ")
life = Song.new("My Life")
fruit = Song.new("Forbiden Fruit")
jordan = Song.new("Michael Jordan")