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
      flash[:notice] = "Congratulations #{@user.first_name}, you are now registered. "
      redirect_to @user
    else
      flash[:alert] = "User registration has failed. Please review errors below."
      render 'new'
    end
  end

  def show
    puts 'redirected to the user#show via the new profile_path'
    @user = User.find(session[:user_id])
    if @user
      puts 'we have an @user last_name:  ', @user.last_name
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :alias)
  end
end
