class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :relationships, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
