class CreateMothers < ActiveRecord::Migration[6.1]
  def change
    create_table :mothers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :dni_number
      t.references :direction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
