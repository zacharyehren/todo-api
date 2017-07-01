class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates :username, presence: true
end
