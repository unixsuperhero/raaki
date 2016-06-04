class CreateTournamentUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_users do |t|
      t.references :user
      t.references :tournament

      t.timestamps
    end
  end
end
