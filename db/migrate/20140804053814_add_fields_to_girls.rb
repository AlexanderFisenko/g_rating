class AddFieldsToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :vk, :string
    add_column :girls, :description, :text
  end
end
