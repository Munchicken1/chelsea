require 'rails_helper'
RSpec.describe Item, elasticsearch: true, :type => :model do
  it 'should be indexed' do
     expect(Item.__elasticsearch__.index_exists?).to be_truthy
  end


# spec/models/Item_spec.rb
# RSpec.describe Item, elasticsearch: true, :type => :model do
#   ...
describe '#search' do
  before(:each) do
  Item.create(
    name: "2046sc-BK",
    color: "Black",
    width: 6,
    height: 3,
    rabbet: 2,
    pcs: 45,
    ft: 200,
    condition: "closeout",
    img_url: "wikimedia.com/Roman_holiday.jpg"
  )
  Item.create(
    name: "2046C-BR300",
    color: "Brown",
    width: 7,
    height: 3,
    rabbet: 3,
    pcs: 35,
    ft: 200,
    condition: "closeout",
    img_url: "someimageurl.com"
  )
  Item.__elasticsearch__.refresh_index!
end
    it "should index name" do
      expect(Item.search("2046c-br").records.length).to eq(1)
    end
    it "should index color" do
      expect(Item.search("black").records.length).to eq(1)
    end
    it "should not index width" do
      expect(Item.search("6").records.length).to eq(0)
    end
    it "should not index height" do
      expect(Item.search("4").records.length).to eq(0)
    end
    it "should not index rabbet" do
      expect(Item.search("2").records.length).to eq(0)
    end
    it "should not index pcs" do
      expect(Item.search("35").records.length).to eq(0)
    end
    it "should not index ft" do
      expect(Item.search("200").records.length).to eq(0)
    end
    it "should not index condition" do
      expect(Item.search("new").records.length).to eq(0)
    end
    it "should not index img_path" do
      expect(Item.search("Roman_holiday.jpg").records.length).to eq(0)
    end
end
end
