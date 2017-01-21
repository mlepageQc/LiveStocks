class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.datetime :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.float :volume
      t.float :ex_dividen
      t.float :split_ratio
      t.float :adj_open
      t.float :adj_high
      t.float :adj_low
      t.float :ajd_close
      t.float :adj_volume

      t.timestamps
    end
  end
end
