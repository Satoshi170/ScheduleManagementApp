class PostsController < ApplicationController
  def home
    @posts = Post.all
  end

  def create
  end
end
