class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email]) #.try(:authenticate, params[:session][:password])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', :notice => "Successfully logged in."
    else
      redirect_to '/login', :flash => {:error => "Invalid username or password"}
    end
  end

  def show
    @current_user = session[:user_id]
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', :notice => 'Successfully logged out.'
  end

end
