class AddPhotolinkToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :photolink, :string
  end
end
