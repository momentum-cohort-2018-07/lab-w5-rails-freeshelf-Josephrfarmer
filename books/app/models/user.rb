class User < ApplicationRecord
  has_many :books

  has_secure_password
  
  validates :password, presence: true

  validates :username, presence: true, uniqueness: true
end
