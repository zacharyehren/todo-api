class ItemSerializer < ActiveModel::Serializer
  belongs_to :list
  attributes :id, :item, :list, :complete

  def item
    object.item
  end

  def list
    object.list.name
  end

  def complete
    object.complete?
  end
  
end
