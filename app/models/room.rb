class Room < ApplicationRecord
  belongs_to :book, optional: true
  has_many :room_users
  has_many :users, through: :room_users
end
