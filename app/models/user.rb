class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates :username, presence: true

  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
