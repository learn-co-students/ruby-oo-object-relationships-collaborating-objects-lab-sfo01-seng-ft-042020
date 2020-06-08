

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
        split_filename = file_name.split(" - ")
        song = Song.new(split_filename[1])
        song.artist = Artist.find_or_create_by_name(split_filename[0])
        song
    end

    def artist_name=(name)     
        self.artist = Artist.find_or_create_by_name(name)
    end

end