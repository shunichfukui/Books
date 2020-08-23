class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_many :users, through: :favorites
  has_many :favorites 
  has_many :messages, dependent: :destroy
  has_one_attached :image
  validates :content, presence: true, unless: :was_attached?

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  def was_attached?
    self.image.attached?
  end
end
