class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.datetime :date
      t.float :amount
      t.string :bill_type, default: 'Dinner'

      t.timestamps
    end
  end
end
