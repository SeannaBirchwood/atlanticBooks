class UsersController < ApplicationController

  def new
    @user = User.new(:role => "user")
    #included roles in case we want to implement admin later
  end

  def index
    @user = User.all
    #order by how many books own/read?
  end

  def profile
    @user = User.find(params[:id])
    #@review = Review.new
    #@reviews = @book.reviews
    helper_method :user_path
  end

  def create
    @user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/', notice: 'Registration complete'
    else
      redirect_to '/signup'
    end
  end

  # Got this code from tutorial. Commented out sections are unnecessary right now
  # but could be necessary later.
  # Url: http://larsgebhardt.de/user-authentication-with-ruby-on-rails-rspec-and-capybara/

  # def activate
  #   @user = User.find_by_activation_code(params[:code])
  #   @user.activation_code = nil
  #   if @user.save
  #     redirect_to root_path, notice: "Activation complete. Welcome #{@user.name}"
  #   else
  #     render action: "new"
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
