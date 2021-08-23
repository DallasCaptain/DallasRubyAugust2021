class PostsController < ApplicationController
  def index
    @user= User.find(session[:user_id])
    @posts= Post.all
  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
  end

  def create
    post = Post.create(post_params)
    unless post.save
      flash[:errors] = post.errors.full_messages
    end
    redirect_to :back
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy if @post.user === current_user
    redirect_to "/posts"
  end

  private
  def post_params
    params.require(:post).permit(:content).merge(user: current_user)
  end
end
