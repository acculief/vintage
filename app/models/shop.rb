class Shop < ApplicationRecord
  mount_uploader :image,PhotoUploader

  has_many :items #shopがitemを所有している

  validates :shopname, presence: true
  validates :image, presence: true


end
