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
    new_song = filename.split(" - ")

  end

end
