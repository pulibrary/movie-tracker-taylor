require "rails_helper"

RSpec.describe "Watchlists", type: :request do
  let(:user) { User.create(email: "test@gmail.com") }
  
  before do
    sign_in(user)
  end

  describe "GET /index" do
    it "returns http success" do
      get "/watchlists#index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/watchlists#show"
      expect(response).to have_http_status(:success)
    end
  end
end
