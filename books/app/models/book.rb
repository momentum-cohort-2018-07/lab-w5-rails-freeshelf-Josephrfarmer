class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :URL, presence: true

  belongs_to :user
end
