class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :girls, :rank, :rating
  end
end
