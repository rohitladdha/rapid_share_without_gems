class SessionsController < ApplicationController
  def new 
  end 
  
  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path, :flash => { :auth_error =>  "Invalid username or password"}
    end 
  end 

  def destroy 
    session[:user_id] = nil 
    redirect_to login_path
  end
end
