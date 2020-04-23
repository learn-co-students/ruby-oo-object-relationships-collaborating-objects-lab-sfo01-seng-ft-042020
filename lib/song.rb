class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        @artist = artist
    end

    def self.new_by_filename(filename)
        artist, title = filename.split(" - ")
        new_song = Song.new(title)
        new_song.artist = Artist.find_or_create_by_name(artist)
        new_song
    end
end
