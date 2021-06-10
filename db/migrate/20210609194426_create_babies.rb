class CreateBabies < ActiveRecord::Migration[6.1]
  def change
    create_table :babies do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :weight

      t.timestamps
    end
  end
end
