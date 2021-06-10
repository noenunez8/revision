class CreateMotherSons < ActiveRecord::Migration[6.1]
  def change
    create_table :mother_sons do |t|
      t.references :mother, null: false, foreign_key: true
      t.references :baby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
