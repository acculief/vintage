class Item < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :shop, optional: true  #itemはshopに帰属している,optionalはshop_idを探さなくなる処理

  validates :itemname, presence: true
  validates :image, presence: true


end
