require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New ad title", body: "Ad body copy", price: 19)}

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(advertisement).to have_attributes(title: "New ad title", body: "Ad body copy", price: 19)
    end
  end
end
