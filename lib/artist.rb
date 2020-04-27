require 'pry'

class Artist

    attr_accessor :name, :songs

    @@all = [ ]

   def initialize(name)
    # binding.pry
    @name = name
    @@all << self
end


def self.all
    @@all
end

def songs
    Song.all.select {|song| song.artist == self}
end

def add_song(song)

song.artist = self
    
    # binding.pry
end

def self.find_or_create_by_name(name)
    found = all.find {|artist| artist.name == name }

    found = Artist.new(name) if found.nil?
    
    found
    # binding.pry    
    #Find the artist instance that has that name
# or create one if it doesn't exist. 
end

    def print_songs
        songs.each {|song| puts song.name}
    end

end