class CreateTypeStrengthTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :type_strength_types do |t|
      t.references :type, null: false
      t.integer :strength_type_id, null: false

      t.timestamps
    end
  end
end
