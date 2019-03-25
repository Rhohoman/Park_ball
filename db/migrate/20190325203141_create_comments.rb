class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :game_id
      t.integer :player_id
      t.string :content

      t.timestamps
    end
  end
end
