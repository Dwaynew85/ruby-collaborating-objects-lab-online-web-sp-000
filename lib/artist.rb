require 'pry'
require './lib/song.rb'
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

  def add_song(song)
    song.artist = self
  end

  def songs
   Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    search = selfall.find {|artist| artist.name == name}
    if search == nil
      new_artist = self.new(name)
    else
      search
    end
  end

end
dmx = Artist.new("DMX")
jay = Artist.new("Jay Z")
cole = Artist.new("J-Cole")
kenny = Artist.new("Kendrick Lamar")
# binding.pry 
