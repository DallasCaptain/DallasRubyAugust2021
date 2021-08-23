class SessionsController < ApplicationController
  def index
    redirect_to "/"
  end

  skip_before_action :require_login, except: [:destroy]


  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/ideas"
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to "/"
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end


end
