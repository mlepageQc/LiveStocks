class AddNotNullConstraintToCompaniesTickers < ActiveRecord::Migration[5.0]
  def change
    change_column :companies, :ticker, :string, null: false
  end
end
