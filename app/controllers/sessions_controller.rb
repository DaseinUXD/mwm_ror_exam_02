class SessionsController < ApplicationController
  def index
    #   if session[:user_id]
    #     puts 'SessionsController index says: in session'
    #     # redirect_to '/items'
    #   else
    #     puts 'SessionsController index says: NOT in session?'
    #   end
  end

  def new
  end

  def create
    email = params['session']['email']
    puts email
    user = User.find_by email: params['session']['email'].downcase
    if user && user.authenticate(params['session']['password'])
      log_in user
      redirect to user
    end
  end

  def destroy
  end

end
