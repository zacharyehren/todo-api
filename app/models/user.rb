class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates :username, presence: true
  validates_uniqueness_of :username
  has_secure_password
end
