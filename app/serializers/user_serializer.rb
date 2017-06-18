class UserSerializer < ActiveModel::Serializer
  require 'JSON'
  has_many :lists

  attributes :id, :username

  def username
    object.username
  end
end
