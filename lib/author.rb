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

class Author 

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def self.post_count
        Post.all.count 
    end

end