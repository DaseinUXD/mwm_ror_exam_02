class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id]
    puts "current_user created?"
  end
  helper_method :current_user

  private
  def require_login
    redirect_to root_path unless current_user
  end
end
