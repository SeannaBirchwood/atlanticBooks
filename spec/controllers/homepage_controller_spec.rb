require 'rails_helper'

RSpec.describe HomepageController, type: :controller do

  describe "GET #recent" do
    it "returns http success" do
      get :recent
      expect(response).to have_http_status(:success)
    end
  end

end
