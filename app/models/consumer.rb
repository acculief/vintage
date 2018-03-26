class Consumer < ApplicationRecord
validates :name, presence: true
validates :pwd, presence: true

end
