class ListSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :items

  attributes :id, :name, :private

  def name
    object.name
  end

  def private
    object.private?
  end

end
