require "rails_helper"

RSpec.describe "Users", type: :request do
  let(:user) { User.create(email: "test@gmail.com") }
  
  before do
    sign_in(user)
  end

  describe "GET /new" do
    it "returns http success" do
      get "/users/new"
      expect(response).to have_http_status(:success)
    end
  end
end
