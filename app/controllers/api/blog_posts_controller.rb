class Api::BlogPostsController < ApplicationController

  def index
    @blog_posts = BlogPost.all
    @blog_posts = @blog_posts.order(id: :asc)
    render "index.json.jb"
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      render "show.json.jb"
    else
      render json: { errors: @blog_post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @blog_post = BlogPost.find(params[:id])
    render "show.json.jb"
  end

  def update
    @blog_post = BlogPost.find(params[:id])
    @blog_post.post_title = params[:post_title] || @blog_post.post_title
    @blog_post.post_content = params[:post_content] || @blog_post.post_content
    @blog_post.post_image_url = params[:post_image_url] || @blog_post.post_image_url
    if @blog_post.save
      render "show.json.jb"
    else
      render json: { errors: @blog_post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy
    render json: { message: "BlogPost successfully destroyed" }
  end

end

