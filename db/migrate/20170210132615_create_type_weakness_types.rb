class CreateTypeWeaknessTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :type_weakness_types do |t|
      t.references :type, null: false
      t.integer :weakness_type_id, null: false

      t.timestamps
    end
  end
end
