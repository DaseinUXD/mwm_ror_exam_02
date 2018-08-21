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
   @user = User.find_by_email(request.params['session']['email'])
   # debugger
   if @user
     flash[:notice] = "Welocome back #{@user.first_name}. Your are is now logged into session"
   end

    # if user.try(:authenticate, '123456789')
    #   puts 'user try worked'
    #   # session[:user_id] = @user.id
    #   # puts session[:user_id]
    #   # redirect_to '/items/index'
    # end
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
