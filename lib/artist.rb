class Artist
  attr_accessor :name

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

  def songs
   Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    new_song = Song.new(song)
    new_song.artist = self
  end

end
