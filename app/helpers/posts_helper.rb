module PostsHelper
  def display_url(post)
    if post.url.starts_with?("http://") or post.url.starts_with?("https://") 
      return post.url
    else 
      return "http://" + post.url
    end

  end

end
