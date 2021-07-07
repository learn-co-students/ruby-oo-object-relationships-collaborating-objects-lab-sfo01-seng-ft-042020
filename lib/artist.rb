require 'pry'
class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.filter do |song_obj|   
            self == song_obj.artist
        end
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
       art_object = self.all.find do |artists|
            artists.name == name
        end

        if art_object == nil
            art_object = self.new(name)
        end
        art_object
    end

    def print_songs
        self.songs.select do |song_obj|
           puts song_obj.name

        end
    end


end