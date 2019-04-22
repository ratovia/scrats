class CreateCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :costs do |t|
      t.integer :price
      t.integer :period
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
