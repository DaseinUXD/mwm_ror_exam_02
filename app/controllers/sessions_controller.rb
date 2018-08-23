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
    puts 'Loaded NEW SESSION VIEW'

  end

  def create # CREATE NEW SESSION
    puts 'Called session CREATE method'
    email = params['session']['email'].downcase
    password = params['session']['password']

    user = User.find_by_email(email).try(:authenticate, password)
    if user
      puts 'found user and authenticated '
      flash[:notice] = "Welcome back #{user.first_name}.  You are now logged in."
      redirect_to user
    else
      puts 'not found user'
      flash[:alert] = "Ooops! The email and password combination entered did not work."
      redirect_to login_path
    end
    # puts 'this is the user trying to find by email',
    # email = params['session']['email']
    # puts email
    # user = User.find_by email: params['session']['email'].downcase
    # puts user
    # if user && user.authenticate(params['session']['password'])
    #   log_in user
    #   redirect to user
    # end
  end

  def destroy
  end

end
