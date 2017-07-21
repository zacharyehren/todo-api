class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates :username, presence: true
  has_secure_password
end
