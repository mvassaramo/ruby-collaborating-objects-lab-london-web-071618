require 'pry'

class Song


attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
end


def self.all
  @@all
end

def self.new_by_filename(some_filename)
  filename_split = some_filename.split('-')
  song_name = filename_split[1].strip
  artist_name = filename_split[0].strip
  artist = Artist.find_or_create_by_name(artist_name)
  song = Song.new(song_name)
  artist.add_song(song)

end


end
