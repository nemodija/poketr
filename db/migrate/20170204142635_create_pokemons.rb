class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :dex, null: false
      t.string :name, null: false
      t.string :series
      t.integer :attack, null: false
      t.integer :max_level_up, null: false, default: 0
      t.references :type, foreign_key: true, null: false

      t.timestamps
    end
  end
end
