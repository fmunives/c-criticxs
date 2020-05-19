class CreateGame < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :gender
      t.integer :price
      t.date :release_date
      # t.references :company, null: false, foreign_key: true
    end
  end
end
