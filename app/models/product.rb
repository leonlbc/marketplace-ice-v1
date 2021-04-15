class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  monetize :price_cents

  belongs_to :collection
  has_many :sizes
  has_many :discounts
  has_one_attached :photo, :dependent => :destroy
end
