class IdeasController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    if @user
      puts '@user made'
    else
      puts 'not made'
    end
    @ideas = Idea.all


    @ideas_ordered = @ideas.sort_by { |a| a.likes.count}.reverse
    @idea = Idea.new
  end

  def new
    @idea = Idea.new
  end

  def create
    @user = User.find(session[:user_id])
    @idea = Idea.new(idea_params)

    @idea.user = @user
    @idea.save
    if @idea.save
      redirect_to ideas_index_path
    else
      flash[:alert] = "Idea content must contain at least five (5) characters."
      redirect_to ideas_index_path
    end
  end

  def show
    @idea = Idea.find(params[:id])
    puts 'this is the user list?', @idea.users
    @users = @idea.users
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(session[:user_id])

    @idea = Idea.find(params[:id])
    @idea.destroy  if @user == @idea.user
    redirect_to ideas_index_path
  end
  private
  def idea_params
    params.require(:idea).permit(:content).merge(user: @user)
  end
end
