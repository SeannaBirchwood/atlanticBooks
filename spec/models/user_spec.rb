require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it 'is valid with username, email, and password confirmation' do
    user = create(:user)
    expect(user).to be_valid
  end

  # Got this code from tutorial. Commented out sections are unnecessary right now
  # but could be necessary later.
  # Url: http://larsgebhardt.de/user-authentication-with-ruby-on-rails-rspec-and-capybara/

  # it 'sends a confirmation email after registration' do
  #   user = create(:user)
  #   open_last_email.should be_delivered_to user.email
  # end

  # it 'is invalid if no activation code is generated' do
  #   user = create(:user)
  #   expect(user.activation_code).to_not be_nil
  # end

  it 'is invalid without email' do
    user = build(:user, :email=> nil)
    expect(user).to have(1).errors_on(:email)
  end

  it 'is invalid without username' do
    user = build(:user, :name=> nil)
    expect(user).to have(1).errors_on(:name)
  end

  it 'is invalid if passwords don\'t match' do
    user = build(:user, :password=>"pw1", :password_confirmation=>"wp1")
    expect(user).to have(1).errors_on(:password)
  end

end
