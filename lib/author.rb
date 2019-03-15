require_relative'./post.rb'

class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)
  end

  def self.post_count
    Post.all.length
  end

end
