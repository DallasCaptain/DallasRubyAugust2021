class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @likes = Like.all

  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.valid?
      redirect_to :back
    else
      flash[:notice] = @idea.errors.full_messages
      redirect_to :back
    end

  end
  def edit
  end

  def show
    @idea = Idea.find(params[:id])
    @likes = @idea.likes.all
  end

  def destroy
    bad_idea = Idea.find(params[:id])
    if current_user.id != bad_idea.user_id
      redirect_to "/users/#{current_user.id}"
    else
      bad_idea.destroy
      redirect_to :back
    end
  end


  private
    def idea_params
      params.require(:idea).permit(:content, :user_id)
    end

end
