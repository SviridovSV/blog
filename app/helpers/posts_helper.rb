module PostsHelper
  def short_content(post)
    truncate(post.content, length: 150)
  end

  def similar_posts
    Post.limit(2).order("RANDOM()")
  end
end