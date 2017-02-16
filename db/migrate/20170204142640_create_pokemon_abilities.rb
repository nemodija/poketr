class CreatePokemonAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_abilities do |t|
      t.references :pokemon, null: false
      t.references :ability, null: false
      t.boolean :default, default: false, null: false

      t.timestamps
    end
  end
end
