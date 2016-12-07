require 'spec_helper'

module UserHelper
  def login(user)
    visit root_path
    click_link 'Login'
    fill_in 'session[email]', with: user.email
    fill_in 'session[password]', with: user.password
    click_button 'Login'
  end

  def logout(user)
    visit root_path
    click_link 'Logout'
  end

  # Got this code from tutorial. Commented out sections are unnecessary right now
  # but could be necessary later.
  # Url: http://larsgebhardt.de/user-authentication-with-ruby-on-rails-rspec-and-capybara/

  # def activate(user)
  #   visit activate_path(:code => user.activation_code)
  # end
end
