class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  belongs_to :book
  
  validates :place, presence: true
end
