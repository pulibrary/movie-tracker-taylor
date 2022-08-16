require 'rails_helper'

RSpec.describe Watchlist, type: :model do
  subject(:watchlist) { Watchlist.new(list_name: 'test_name') }

  it "is valid with valid attributes" do
    expect(watchlist).to be_valid
  end

  it "is not valid without a list_name" do
    watchlist.list_name = nil
    expect(watchlist).to_not be_valid
  end
end
