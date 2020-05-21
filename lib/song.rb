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
    song = Song.new(file[1])
    @artist = file[0]
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
