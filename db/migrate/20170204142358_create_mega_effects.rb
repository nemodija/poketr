class CreateMegaEffects < ActiveRecord::Migration[5.0]
  def change
    create_table :mega_effects do |t|
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
