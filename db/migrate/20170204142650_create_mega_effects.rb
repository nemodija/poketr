class CreateMegaEffects < ActiveRecord::Migration[5.0]
  def change
    create_table :mega_effects do |t|
      t.string :name, null: false
      t.string :note
      t.integer :mega_skill_up, null: false
      t.references :pokemon, foreign_key: true, null: false

      t.timestamps
    end
  end
end
