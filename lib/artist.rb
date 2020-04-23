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

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
        found = all.find {|artist| artist.name == name}
        found = Artist.new(name) if found.nil?
        found        
    end

    def print_songs
        Song.all.select {|song| song.artist == self}.each {|song| puts song.name}
    end

    
end
