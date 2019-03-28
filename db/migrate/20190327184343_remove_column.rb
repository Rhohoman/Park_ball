class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :player_id
  end
end
