class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.references :girl, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
