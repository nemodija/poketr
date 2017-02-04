class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :dex
      t.string :name
      t.references :type, foreign_key: true
      t.integer :attack
      t.references :ability, foreign_key: true
      t.references :mega_effect, foreign_key: true

      t.timestamps
    end
  end
end
