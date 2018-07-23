class MP3Importer

attr_accessor :path, :some_filename

def initialize(path)
  @path = path
end

def files
  Dir[@path + "/*mp3"].map {|element| File.basename(element)}
end

def import
  Song.new_by_filename(some_filename)
end

end
