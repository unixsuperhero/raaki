class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nick
      t.integer :wins
      t.references :match

      t.timestamps
    end
  end
end
