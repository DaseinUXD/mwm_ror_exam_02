class LikesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.find(session[:user_id])
    @idea = Idea.find(like_params[:idea_id])
    # @idea = Idea.find(like_params[:idea_id])
    if @idea.users.include? @user
      flash[:alert] = "#{@user.name}, you may only like something once."
    else
      @like = Like.new(like_params)
      @like.save

    end
    redirect_to ideas_index_path

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def like_params
    params.require(:like).permit(:idea_id).merge(user: @user)
  end
end
