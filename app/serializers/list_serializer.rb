class ListSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :items

  attributes :id, :name

  def name
    object.name
  end

end
