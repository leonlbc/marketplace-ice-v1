class Product < ApplicationRecord
  belongs_to :collection
  has_many :sizes
end
