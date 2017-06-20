class ItemSerializer < ActiveModel::Serializer
  belongs_to :list
  attributes :id, :item, :list

  def item
    object.item
  end

  def list
    object.list.name
  end
end
