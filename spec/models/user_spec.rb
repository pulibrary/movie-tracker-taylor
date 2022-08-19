require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { User.new(email: "test@gmail.com", password: "test password") }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without an email address" do
    user.email = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user.email = "test@gmail.com"
    user.password = nil
    expect(user).to_not be_valid
  end
end
