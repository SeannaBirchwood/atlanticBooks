require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "user log in" do
    it "allows an existing user to sign in" do
      User.create!(email: "sea@sea.com", password: "birchwood on the sea")

      visit "/login"
      fill_in "Email", with: "sea@sea.com"
      fill_in "Password", with: "birchwood on the sea"

      click_button "Login"

      expect(page).to have_content("Signed in successfully.")
    end
  end

end
