require 'pry'
class Song
    @@all = []
attr_accessor :name, :artist
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        # filename = "Discreet Unit - Shake Your Body Down - genre"
        #self.new(filename)
        # artist = filename
        #
          artist, song = filename.split(" - ")
          new_song = Song.new(song)
          new_song.artist = Artist.find_or_create_by_name(artist)
        # end
        # next_arr = []
        # new_arr.each do |title|
        #     next_arr << title[1]
        # end
        new_song
    end

    def artist_name=(art_name)
       @artist = Artist.find_or_create_by_name(art_name)
    end

    private
    def save
        @@all << self
    end

end