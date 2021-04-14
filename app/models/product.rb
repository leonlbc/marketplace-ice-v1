class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :collection
  has_many :sizes

  monetize :price_cents

  has_one_attached :photo, :dependent => :destroy
end
