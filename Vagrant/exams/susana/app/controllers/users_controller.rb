class UsersController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]
  before_action :require_rightuser, only:[:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end

  def login
    @user = User.find_by(email: user_params[:email])
    if @user
      session[:user_id] = @user.id
      redirect_to '/posts'
    else
      flash[:errors] = ['Wrong email or password']
      redirect_to :back
    end
  end

  def logout
    reset_session
    redirect_to '/users'
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to :back, notice: "Successfully created user"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:alias,:email,:password,:confirm_password)
  end
  def require_rightuser
    if current_user != User.find(params[:id])
      redirect_to "/users/#{session[:user_id]}"
    end
  end
end
