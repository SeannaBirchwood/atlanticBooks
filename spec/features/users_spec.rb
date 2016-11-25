require 'spec_helper'

feature 'User authentication', %q{
  As a site user
  I want to access my profile
  so that I can add books to my wishlist
} do

  background do
    @user = create(:user)
  end

  scenario 'User registration' do
    visit root_path
    click_link 'Register'
    fill_in 'user[username]', with: 'SeaBirch'
    fill_in 'user[email]', with: 'sea@sea.com'
    fill_in 'user[password]', with: 'newpassword'
    fill_in 'user[password_confirmation]', with: 'newpassword'
    click_button 'Submit'
    expect(page).to have_content "Registration complete. Please create your profile"
  end

  # Got this code from tutorial. Commented out sections are unnecessary right now
  # but could be necessary later.
  # Url: http://larsgebhardt.de/user-authentication-with-ruby-on-rails-rspec-and-capybara/

  # scenario 'User activation' do
  #   activate(@user)
  #   expect(page).to have_content "Activation complete. Welcome #{{@user.username}}"
  # end

  # scenario 'Visitors don\'t have access to ____' do
  #   visit profile_path
  #   expect(page).to have_content "This page is protected. Please login"
  # end

  scenario 'User login' do
    #activate(@user)
    login(@user)
    expect(page).to have_content "Successfully logged in."
  end

  scenario 'User logout' do
    #activate(@user)
    login(@user)
    logout(@user)
    expect(page).to have_content "Successfully logged out"
  end

  scenario 'Inactive User are not able to login' do
    login(@agent)
    expect(page).to have_content "Account inactive. Please activate your account"
  end

  scenario 'Users have access to their profile' do
    #activate(@user)
    login(@user)
    visit profile_path
    expect(page).to have_content "Welcome to your profile, #{@user.username}"
  end

end
