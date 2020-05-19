class ChangeColumnCountryOnCompany < ActiveRecord::Migration[6.0]
  def change
    change_column :companies, :country, :string
  end
end
