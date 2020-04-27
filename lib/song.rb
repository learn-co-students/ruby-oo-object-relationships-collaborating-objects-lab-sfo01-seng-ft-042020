require 'pry'
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

    def self.new_by_filename(file_name)
        song_name = file_name.split(' - ')[1]
        artist_name = file_name.split(' - ')[0]
        song = self.new(file_name)
        song.name = song_name
        song.artist_name = artist_name
        song
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end

end