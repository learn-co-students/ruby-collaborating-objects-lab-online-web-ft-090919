
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)

    artist_name, song_name = filename.split(" - ")

    new_song = self.new(song_name)

    new_song.artist_name = artist_name

    new_song
  end

  def artist_name=(name)

    artist = Artist.find_or_create_by_name(name)

    # binding.pry
    # self.artist = artist
    artist.add_song(self)
  end

end
