class CreateCompany < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :country
    end
  end
end
