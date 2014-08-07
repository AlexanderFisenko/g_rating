class AddTextToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :text, :text
  end
end
