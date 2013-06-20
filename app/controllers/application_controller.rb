class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
private

  def current_user
    # find the user based off of the session's user_id (only if the variable exists)
    # cache it in an instance variable so that it will only be fetched once per request
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  # allow current_user to be fetched from inside the view as well
  helper_method :current_user
  
  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
  
end
