class CreateTracings < ActiveRecord::Migration[6.1]
  def change
    create_table :tracings do |t|
      t.date :date_of_visit
      t.string :mother_is_health
      t.string :son_is_health
      t.string :description
      t.references :mother, null: false, foreign_key: true
      t.references :baby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
