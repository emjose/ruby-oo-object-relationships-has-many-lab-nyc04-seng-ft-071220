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

# The #add_song_by_name method should take in an argument of a name (or title), 
# use that argument to create a new song (or post) and then associate the objects.

# These methods should use, or extend, the has many/belongs to relationship you're building out. 
# If a song has an artist, you can call: some_song.artist and 
# return an actual instance of the Artist class. 
# Since every artist has a name, some_song.artist.name should 
# return the name of the Artist instance associated with the given song. 
# Your #artist_name method should utilize this relationship.

# You'll be required to write a class method that returns the total number of songs that have been created. 
# You'll be required to write a similar method for the Author class. 
# How can we get access to total number of songs from the artist class or the total number of posts from the author class?

class Song
    
    attr_accessor :name, :artist
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def artist_name
      artist.name if artist
    end

end