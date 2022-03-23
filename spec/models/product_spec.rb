require 'rails_helper'
RSpec.describe Product, type: :model do
  context 'Validation Tests' do
    it "should provide name of the product" do
      product = Product.new(
        brand: "ABC",
        price: "100",
        description: "dummy data"
      )
      expect(product).to_not be_valid
    end
    it "should provide name of the brand" do
      product = Product.new(
        name: "ABC",
        price: "100",
        description: "dummy data"
      )
      expect(product).to_not be_valid
    end
    it "should provide name of the price" do
      product = Product.new(
        name: "ABC",
        brand: "100",
        description: "dummy data"
      )
      expect(product).to_not be_valid
    end
    it 'should save successfully' do
      product = Product.new(
        name: "ABC",
        brand: "100",
        price: "dummy data",
        description: "dummy data"
      )
      expect(product).to be_valid
    end
  end
  context "Scope Tests" do
    before(:each) do
      Product.new(name: "ABC", brand: "100", price: "dummy data", description: "dummy data").save
      Product.new(name: "ABC", brand: "100", price: "dummy data", description: "dummy data").save
      Product.new(name: "ABC", brand: "100", price: "dummy data", description: "dummy data").save
      Product.new(name: "ABC", brand: "100", price: "dummy data").save
      Product.new(name: "ABC", brand: "100", price: "dummy data").save
    end

    it 'should return product without description' do
      expect(Product.products_without_description.size).to eq(2)
    end

    it 'should return product with description' do
      expect(Product.products_with_description.size).to eq(3)
    end
  end
end
