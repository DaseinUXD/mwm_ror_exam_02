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
      flash[:notice] = "New user created successfully"
      puts '+++++ @item.id +++++'
      puts @item.id
      redirect_to '/users/show'
    else
      render 'new'
    end
  end

  def show
    @user = User.find(@user.id)
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
