class Blog::PostsController < Blog::ApplicationController
  def index
    @page = params[:page].nil? ? 1 : params[:page]
    @posts = Blog::Post.published.page(@page)
  end

  def show
    if current_user
      @post = Blog::Post.default.where("url = :url", {url: params[:post_url]}).first
    else
      @post = Blog::Post.published.where("url = :url", {url: params[:post_url]}).first
    end
    if @post.nil?
      not_found
    end
  end

  def feed
    @posts = Blog::Post.published.limit(25)
  end
end
