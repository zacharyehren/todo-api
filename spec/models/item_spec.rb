require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create!(item: "New to do item") }

  describe "attributes" do
    it "has a item attribute" do
      expect(item).to have_attributes(item: "New to do item")
    end
  end
end
