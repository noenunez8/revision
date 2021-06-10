class CreatePregnancyControls < ActiveRecord::Migration[6.1]
  def change
    create_table :pregnancy_controls do |t|
      t.string :control_type
      t.date :control_date
      t.string :description
      t.references :mother, null: false, foreign_key: true

      t.timestamps
    end
  end
end
