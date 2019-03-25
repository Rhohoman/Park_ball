class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :date
      t.string :location

      t.timestamps
    end
  end
end
