class Artist
    attr_accessor :name, :songs
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
        found = self.new(name) if found.nil?
        found
        # all.find do |artist|
        #     if artist.name == name
        #         artist
        #     else
        #         self.new(name)
        #     end
        # end
    end

    # calling method #songs and use the data in there
    def print_songs
        songs.each {|song| puts song.name}
    end

end