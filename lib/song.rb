class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # def artist=(artist)
  #   self.artist = artist
  # end
  def self.new_by_filename(filename)
    split_file = filename.split(" - ")
    artist = split_file[0]
    song_name = split_file[1]
    # genre = split_file[2].gsub(".mp3", "")
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
  end
  
  def self.all 
    @@all
  end
end