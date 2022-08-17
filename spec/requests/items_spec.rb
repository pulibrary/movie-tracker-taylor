require 'rails_helper'

RSpec.describe "Items", type: :request do
  before(:all) do
    @item = Item.new(title: "title")
  end
  
  describe "GET /index" do
    it "returns http success" do
      get "/watchlists/1#index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/watchlists/1#show"
      expect(response).to have_http_status(:success)
    end
  end
end
