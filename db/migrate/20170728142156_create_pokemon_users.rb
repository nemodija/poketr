class CreatePokemonUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_users do |t|
      t.references :pokemon, null: false
      t.references :user, null: false
      t.integer :level, default: 1, null: false

      t.timestamps
    end
  end
end
