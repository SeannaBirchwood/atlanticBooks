require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
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
end
