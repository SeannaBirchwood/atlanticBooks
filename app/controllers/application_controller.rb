class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_user?(user)
    user == current_user
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  def auth_required
    unless current_user
      session[:target_url] = request.fullpath
      redirect_to '/login',:flash => {error => "You need to be a user to access this section"}
    end
  end

  # Got this code from tutorial. Commented out sections are unnecessary right now
  # but could be necessary later.
  # Url: http://larsgebhardt.de/user-authentication-with-ruby-on-rails-rspec-and-capybara/

  # def access_only_with_roles(*roles)
  #   if current_user
  #     unless roles.include? current_user.role
  #       session[:target_url] = request.fullpath
  #       redirect_to '/login', :flash => {:warning => "Access denied"}
  #     end
  #   end
  # end

  #Use the following code with any action we want to protected
  #access_only_with_roles("admin", "user", "other 'role' we might need"}

end
