class Recipe < ActiveRecord::Base
  attr_accessible :name, :ingredients, :price, :category
end
