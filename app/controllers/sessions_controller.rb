class SessionsController < ApplicationController
  def index
    # if session[:user_id]
    #   redirect_to '/items'
    # else
    #   puts 'sessions controller index failed?'
    # end
  end

  def new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user
      if @user.try(:authenticate, params[:password])
        session[:user_id]=@user.id
        redirect_to items_index_path
      end
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
