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
    file = filename.split(" - ")
    artist_name = Artist.new(file[0])
    song = Song.new(file[1])
    song.artist = artist_name
  end

  def artist_name=(name)
    artist = Artist.new(name)
    artist.add_song(self)
  end

end
