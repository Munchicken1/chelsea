require 'rails_helper'
RSpec.describe Item, elasticsearch: true, :type => :model do
  it 'should be indexed' do
     expect(Item.__elasticsearch__.index_exists?).to be_truthy
  end
end

# spec/models/Item_spec.rb
RSpec.describe Item, elasticsearch: true, :type => :model do
  ...
describe '#search' do
    before(:each) do
      Item.create(
        title: "Roman Holiday",
        overview: "A 1953 American romantic comedy films ...",
        image_url: "wikimedia.com/Roman_holiday.jpg",
        vote_average: 4.0
      )
      Item.__elasticsearch__.refresh_index!
    end
    it "should index title" do
      expect(Item.search("Holiday").records.length).to eq(1)
    end
    it "should index overview" do
      expect(Item.search("comedy").records.length).to eq(1)
    end
    it "should not index image_path" do
      expect(Item.search("Roman_holiday.jpg").records.length).to eq(0)
    end
    it "should not index vote_average" do
      expect(Item.search("4.0").records.length).to eq(0)
    end
  end
