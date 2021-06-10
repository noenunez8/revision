class CreateCenterAttentions < ActiveRecord::Migration[6.1]
  def change
    create_table :center_attentions do |t|
      t.string :name
      t.string :description
      t.references :direction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
