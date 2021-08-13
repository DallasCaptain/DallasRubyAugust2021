class User2sController < ApplicationController
  def new
  end

  def create 
    @user2 = User2.new(user2params)
    if @user2.save
      flash[:notice] = ["User successfully created"]
    else
      flash[:notice] = ['User not created']
    end
    redirect_to user2s_new_path
  end


  private
  def  user2params
    params.require(:user2).permit(:fname,:email)
  end
end
