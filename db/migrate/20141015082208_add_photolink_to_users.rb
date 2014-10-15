class AddPhotolinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :photolink, :string
  end
end
