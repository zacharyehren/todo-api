class AddColumnToItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :list, foreign_key: true
  end
end
