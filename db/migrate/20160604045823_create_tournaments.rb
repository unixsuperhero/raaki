class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.time :starts_at
      t.time :ends_at
      t.integer :number_of_players
      t.integer :winner_id

      t.timestamps
    end
  end
end
