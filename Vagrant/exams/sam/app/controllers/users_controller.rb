class UsersController < ApplicationController

  skip_before_action :require_login, except: [:show]

  def new
    redirect_to "/"
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      flash[:notice] = "Registration successful. Please log in."
      # redirect_to dojo_user_path(dojo_id: @user.dojo_id, id: @user.id)
      redirect_to "/"
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def edit
    redirect_to "/"
  end

  def show
    @user = User.find(params[:id])
    @ideas = Idea.all.where(user_id: @user.id)
    @likes = Like.all.where(user_id: @user.id)
    @userIdeas = @user.ideas
    @likes_count = 0
    @userIdeas.each do |idea|
      @likes_count += idea.likes.count 
    end
  end


  private
    def user_params
      params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
    end
end
