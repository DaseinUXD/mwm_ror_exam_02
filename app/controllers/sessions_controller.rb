class SessionsController < ApplicationController
  def index
    if session[:user_id]
      puts 'SessionsController index says: in session'
      # redirect_to '/items'
    else
      puts 'SessionsController index says: NOT in session?'
    end
  end

  def new
  end

  def create
    user = User.find_by_email(:user_params.email)
    puts 'SessionsController create says: this @user is in session'
    puts user

      if user.try(:authenticate, params[:password])
        session[:user_id] = @user.id
        render '/items/index'
      end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
