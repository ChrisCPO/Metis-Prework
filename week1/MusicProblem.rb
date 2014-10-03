require 'csv'

class MusicQuery
  def initialize(songs)
    @songs = songs
  end

  def start
    welcome_banner
    display_artist_menu
  end

  def welcome_banner
    msg = "welcome"
    puts "-" * msg.length
    puts msg
    puts "-" * msg.length
  end

  def display_artist_menu
    unique_sorted_artists.each do |artist|
      puts "* #{artist}"
    end
  end

  def unique_sorted_artists
    @songs.map { |song| song.artist }.uniq.compact.sort
  end
end

class DataExtractor
  attr_reader :songs

  def initialize(filename)
    @songs = Array.new
    @file = File.open(filename)
    read_file
  end

  def read_file
    CSV.foreach(@file , headers:true) do |row|
      @songs << Song.new(row["Artist"], row["Name"])
    end
  end
end

class Song
  attr_reader :artist, :title

  def initialize(artist, title)
    @artist = artist
    @title = title
  end

  def to_s
    "#{artist} - #{title}"
  end
end

songs = DataExtractor.new("Music_list").songs

music_program = MusicQuery.new(songs)
music_program.start
