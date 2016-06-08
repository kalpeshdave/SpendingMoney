class CreateBillFriends < ActiveRecord::Migration
  def change
    create_table :bill_friends do |t|
      t.references :bill
      t.references :user
      t.float :contribution

      t.timestamps
    end
    add_index :bill_friends, :bill_id
    add_index :bill_friends, :user_id
  end
end
