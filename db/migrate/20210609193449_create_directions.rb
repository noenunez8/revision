class CreateDirections < ActiveRecord::Migration[6.1]
  def change
    create_table :directions do |t|
      t.string :street
      t.integer :number
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
