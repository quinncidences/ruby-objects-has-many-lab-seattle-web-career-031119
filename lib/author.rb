require 'pry'

class Author

  attr_accessor :name, :post

  @@all = []

  def initialize(name)
    @name = name
  end

  def posts
    @@all
  end

  def add_post(post)
    post.author = self
    @@all << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@all << post
  end

  def self.post_count
    @@all.count
  end

end
