require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /index" do
    it 'should return success response' do
      product = Product.new(id: 1,name: "ABC", brand: "100", price: "dummy data", description: "dummy data").save
      get "/api/v1/products"
      expect(response).to be_successful
    end
    it 'should not return success response for unavailable product' do
      product = Product.new(name: "ABC", brand: "100", price: "dummy data", description: "dummy data").save
      get "/api/v1/products/123"
      expect(response).to_not be_successful
    end
  end

  describe "Delete /delete" do
    it 'should delete the valid product' do
      product = Product.new(id: 1,name: "ABC", brand: "100", price: "dummy data", description: "dummy data").save
      delete "/api/v1/products/1"
      expect(response).to be_successful
    end
    it 'should return fail if id does not exist' do
      get "/api/v1/products/1"
      expect(response).to_not be_successful
    end
  end
end
