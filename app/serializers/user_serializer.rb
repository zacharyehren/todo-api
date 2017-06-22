class UserSerializer < ActiveModel::Serializer
  has_many :lists

  attributes :id, :username, :password

  def username
    object.username
  end

  def password
    object.password
  end 


end
