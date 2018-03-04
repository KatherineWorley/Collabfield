class PostsController < ApplicationController
  def show
   	@post = Post.find(params[:id])
  end

  def hobby
   	posts_for_branch(params[:action])
  end

  def study
    posts_for_branch(params[:action])
  end

  def team
    posts_for_branch(params[:action])
  end
end