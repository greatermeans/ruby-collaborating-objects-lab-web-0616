class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    found = Artist.all.find {|artist| artist.name == name}
    return found unless found == nil
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end




end