class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :period
      t.integer :price
      t.date :start_date
      t.date :update_date
      t.timestamps
    end
  end
end
