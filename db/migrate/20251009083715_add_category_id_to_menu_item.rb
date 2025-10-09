class AddCategoryIdToMenuItem < ActiveRecord::Migration[8.0]
  def change
    add_column :menu_items, :category_id, :integer
  end
end
