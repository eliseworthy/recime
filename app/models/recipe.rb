class Recipe < ActiveRecord::Base
  attr_accessible :name, :description, :instructions, :ingredients_attributes
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  validates :name, uniqueness: true
end
