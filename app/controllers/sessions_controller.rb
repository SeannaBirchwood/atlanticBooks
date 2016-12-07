class SessionsController < ApplicationController

  def new
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def create
    puts "Running create"
    user = User.find_by_email(params[:session][:email]) #.try(:authenticate, params[:session][:password])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully logged in."
      redirect_to '/'
    else
      redirect_to '/login', :notice => "Invalid username or password"
    end
  end

  def show
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', :notice => 'Successfully logged out.'
  end

end
