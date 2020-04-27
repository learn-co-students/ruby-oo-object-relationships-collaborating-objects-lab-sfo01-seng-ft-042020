require 'pry'

class Song
    attr_accessor :name, :artist

    @@all = [ ]

    def initialize(name)
        @artist = artist
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        file_name_array = filename.sub!(/.mp3/,'').split(" - ")
        song = self.new(filename)
        song.name = file_name_array[1]
        song.artist_name = file_name_array[0]
        song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end



end 
