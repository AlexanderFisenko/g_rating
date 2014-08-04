class AddPhotoToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :photo, :string
  end
end
