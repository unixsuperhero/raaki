class CreateMatchUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :match_users do |t|
      t.references :user
      t.references :match

      t.timestamps
    end
  end
end
