class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").map {
      |f| f.gsub("#{path}/", "")
    }
  end

  def imports
    Song.create_from_filename
  end
end
