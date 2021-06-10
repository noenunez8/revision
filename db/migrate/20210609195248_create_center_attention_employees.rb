class CreateCenterAttentionEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :center_attention_employees do |t|
      t.string :description
      t.references :center_attention, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true
      t.references :mother, null: false, foreign_key: true
      t.references :baby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
