class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end

  def files
    Dir["#{path}/*.mp3"].collect {|song| song.gsub("#{path}/", "")}
  end

end