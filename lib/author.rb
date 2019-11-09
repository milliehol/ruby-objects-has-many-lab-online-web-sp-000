class Author
  attr_accessor :name, :post


@@post_count = 0


  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end
end
