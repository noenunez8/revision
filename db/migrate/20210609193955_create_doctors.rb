class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.references :speciality, null: false, foreign_key: true
      t.references :direction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
