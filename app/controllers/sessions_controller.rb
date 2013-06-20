class SessionsController < ApplicationController
  def new
  end
  
  # log in
  def create
    
    # lookup the user by email
    user = User.find_by_email(params[:email])
    
    # use the has_secure_password function 'authenticate'
    if user && user.authenticate(params[:password])
      
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"  
    else
      flash.now.alert = "Email of password is invalid"
      render "new"
    end
    
  end
  
  
  # log out
  def destroy
    session[:user_id] = nil
    #reset_session
    redirect_to root_url, notice: "Logged Out"
  end
  
end
