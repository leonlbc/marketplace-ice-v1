class Client < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :collections
  has_one_attached :logo, :dependent => :destroy
end
