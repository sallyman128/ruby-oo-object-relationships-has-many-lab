class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(post_title)
    @title = post_title
    save
  end

  def save
    @@all << self
  end

  def author_name
    if self.author == nil
      author = nil
    else
      author = self.author.name
    end
    
    author
  end

  def self.all
    @@all
  end

end