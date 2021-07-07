

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    binding.pry
    Song.all.select {|artist| }
  end

  def add_song(song)
    song.astist = self
  end



end
