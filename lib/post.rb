# How can an author have many posts and a post belong to an author? 
# An individual post will need to hold a reference to the author it belongs to, 
# meaning it will need to have an author=() and author method. 
# And an individual author will need a method that returns a collection of all the posts that belong to that author. 
# Which means the post class will need to have a class variable that holds 
# all instances of every post that's been created in an array. 
# To access that array, the post class will also need a class method 
# that returns the class variable holding those instances.

# The same goes for an author and a post. To do this, you'll need to create 
# a class variable that keeps track of all its post instances and a post instance 
# needs to know about the author class it belongs to.

# For add_post_by_title, you'll want to make sure the body of the method associates the newly created post with an author.

# These methods should use, or extend, the has many/belongs to relationship you're building out. 
# If a song has an artist, you can call: some_song.artist and 
# return an actual instance of the Artist class. 
# Since every artist has a name, some_song.artist.name should 
# return the name of the Artist instance associated with the given song. 
# Your #artist_name method should utilize this relationship.

# You'll be required to write a class method that returns the total number of songs that have been created. 
# You'll be required to write a similar method for the Author class. 
# How can we get access to total number of songs from the artist class or the total number of posts from the author class?

class Post

    attr_accessor :title, :author
  
    @@all = []
  
    def initialize(title)
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def author_name
      author.name if author
    end
    
  end