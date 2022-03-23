class Product < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :brand
  validates_presence_of :price
  scope :products_without_description, -> { where(description: nil )}
  scope :products_with_description, -> { where.not(description: nil )}
end
