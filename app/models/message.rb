class Message < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :book, optional: true

  validates :text ,presence: true

end
