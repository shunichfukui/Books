class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_one :room, dependent: :destroy
  has_one :message, dependent: :destroy
  has_many :tag_relations, dependent: :destroy
  has_many :tags, through: :tag_relations, dependent: :destroy
  has_one_attached :image
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
