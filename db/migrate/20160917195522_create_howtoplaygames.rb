class CreateHowtoplaygames < ActiveRecord::Migration[5.0]
  def change
    create_table :howtoplaygames do |t|
      t.text :instructions
      t.integer :game_id

      t.timestamps
    end
  end
end
