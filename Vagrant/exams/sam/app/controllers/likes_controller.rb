class LikesController < ApplicationController
  def index
    redirect_to "/"
  end

  def create
    # @likes = Like.create(like_params)
    @idea = Idea.find(params[:idea_id])
    @likes = Like.create(idea: @idea, user: current_user)
    redirect_to :back
  end
  def destroy
    @like = Like.find(params[:id])
    if current_user.id != @like.user.id
      redirect_to "/users/#{current_user.id}"
    else
      @like.destroy
      redirect_to :back
    end
  end

end
