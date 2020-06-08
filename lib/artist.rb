

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def self.find_or_create_by_name(name_string)

        found = Artist.all.find do |artist| artist.name == name_string
            end
        if found
            found            
        else
            Artist.new(name_string)
        end

    end

    def print_songs

        songs.map do |song| puts song.name
        end
    end

end
