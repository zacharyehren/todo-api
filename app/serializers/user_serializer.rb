class UserSerializer < ActiveModel::Serializer
  has_many :lists

  attributes :id, :username

  def username
    object.username
  end


end
