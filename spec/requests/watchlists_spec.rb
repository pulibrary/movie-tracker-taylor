require "rails_helper"

RSpec.describe "Watchlists", type: :request do
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
