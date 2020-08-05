# How can an artist have many songs and a song belong to an artist? 
# An individual song will need to have a reference to the artist it belongs to, 
# meaning it will need to have an artist=() and artist method. 
# And an individual artist will need a method that returns a collection of all the songs that belong to that artist. 
# Which means the song class will need to have a class variable that holds 
# all instances of every song that's been created in an array. 
# To access that array, the song class will also need a class method 
# that returns the class variable holding those instances.

# In order to have an artist find all of it's songs, the song class needs to know about 
# all its song instances and a song instance needs to know about the artist class it belongs to.

# Build the methods some_song.artist_name and some_post.author_name 
# that return the names of the artist and author of the given song and post respectively.

# These methods should use, or extend, the has many/belongs to relationship you're building out. 
# If a song has an artist, you can call: some_song.artist and 
# return an actual instance of the Artist class. 
# Since every artist has a name, some_song.artist.name should 
# return the name of the Artist instance associated with the given song. 
# Your #artist_name method should utilize this relationship.

# Note: We like our code to be robust, i.e. not easily breakable. 
# Make sure your #artist_name and #author_name methods will not break 
# if the given song or post does not have an artist or author. In this case, your methods should return nil.


class Artist
    
    attr_accessor :name
  
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
  
    def add_song_by_name(name)
      song = Song.new(name)
      song.artist = self
    end
  
    def songs
      Song.all.select {|song| song.artist == self}
    end
  
    def self.song_count
      Song.all.count
    end

end