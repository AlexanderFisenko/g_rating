class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :girl, index: true
      t.float :value

      t.timestamps
    end
  end
end
