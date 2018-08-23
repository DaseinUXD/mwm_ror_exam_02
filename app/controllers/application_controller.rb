class ApplicationController < ActionController::Base
  # skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception
  # include SessionsHelper

  def current_user
    User.find(session[:user_id]) if session[:user_id]
    puts session[:user_id]
    puts "***** application_controller.rb METHOD current_user says: 'current_user created'"
  end
  helper_method :current_user

  private
  # def require_login
  #   redirect_to root_path unless current_user
  # end
end
