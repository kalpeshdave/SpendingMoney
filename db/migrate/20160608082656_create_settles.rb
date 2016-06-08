class CreateSettles < ActiveRecord::Migration
  def change
    create_table :settles do |t|
      t.integer :payer
      t.integer :payee
      t.float :amount
      t.string :status

      t.timestamps
    end
  end
end
