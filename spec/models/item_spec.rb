require "rails_helper"

RSpec.describe Item, type: :model do
  let(:watchlist) { Watchlist.new(list_name: "test name") }
  subject(:item) { Item.new(watchlist: watchlist, title: "test title") }

  it "is valid with valid attributes" do
    expect(item).to be_valid
  end

  it "is not valid without a title" do
    item.title = nil
    expect(item).to_not be_valid
  end
end
