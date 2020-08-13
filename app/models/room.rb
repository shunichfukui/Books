class Room < ApplicationRecord
  belongs_to :book, optional: true
  has_many :messages, dependent: :destroy
  has_many :room_users
  has_many :users, through: :room_users
  validates :field ,presence: true

end
