class Product < ApplicationRecord
  has_many :sales

  mount_uploader :image, ProductImageUploader

  validates :name, :size, :quantity, :reference, :value, presence: true


end
