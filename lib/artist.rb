require 'pry'
require_relative 'song.rb'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def songs 
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)
    
    found = self.all.find {|artist| artist.name == artist_name}
    if !!found
      found
    else 
      self.new(artist_name)
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.all 
    @@all
  end
end

# artist = Artist.new('Michael Jackson')
# dirty_diana = Song.new("Dirty Diana")
# billie_jean = Song.new("Billie Jean")
# piano_man = Song.new("Piano Man")
# song_one = Song.new("Rock With You")
# song_two = Song.new("Smooth Criminal")
# artist_1 = Artist.find_or_create_by_name("Michael Jackson")
#       artist_2 = Artist.find_or_create_by_name("Michael Jackson")