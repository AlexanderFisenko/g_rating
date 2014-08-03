class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :first_name
      t.string :last_name
      t.float :rank

      t.timestamps
    end
  end
end
