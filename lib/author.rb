Learn more or give us feedback
require_relative 'post'

class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    p = Post.new(title)
    p.author = self
    @posts << p
  end

  def self.post_count
    Post.all.length
  end
end
