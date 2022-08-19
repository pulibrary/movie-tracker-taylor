require "rails_helper"

RSpec.describe "Items", type: :request do
  let(:user) { User.create(email: "test@gmail.com") }

  before do
    sign_in(user)
  end

  before(:all) do
    @watchlist = Watchlist.new(list_name: "list_name")
    @item = Item.new(title: "title")
  end

  describe "GET /index" do
    it "returns http success" do
      get "/watchlists/#{@watchlist[:id]}"
      expect(response).to have_http_status(:success)
    end
  end
end
