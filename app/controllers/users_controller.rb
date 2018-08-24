class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      flash[:notice] = "Congratulations #{@user.name}, you are now registered. "
      session[:user_id] = @user.id

      redirect_to ideas_index_path
    else
      flash[:alert] = "User registration has failed. Please review errors below."
      render 'new'
    end
  end

  def show
    puts 'redirected to the user#show via the new profile_path'
    @user = User.find(session[:user_id])
    # @current_user
    if @user
      puts 'we have an @user name:  ', @user.name
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end
end
